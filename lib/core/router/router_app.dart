import 'package:cooknow/core/exceptions/app_exception.dart';
import 'package:cooknow/core/router/go_router_refresh_stream.dart';
import 'package:cooknow/core/router/not_found_screen.dart';
import 'package:cooknow/core/router/scaffold_with_nested_navigation.dart';
import 'package:cooknow/core/utils/decode_token.dart';
import 'package:cooknow/core/widget/list_user_screen.dart';
import 'package:cooknow/core/widget/show_alert.dart';
import 'package:cooknow/features/authentication/application/auth_service.dart';
import 'package:cooknow/features/authentication/presentation/page/auth_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/login_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_account_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_user_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_verify_code_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_welcome.dart';
import 'package:cooknow/features/authentication/presentation/page/welcome_screen.dart';
import 'package:cooknow/features/feeds/presentation/page/detail_post_screen.dart';
import 'package:cooknow/features/feeds/presentation/page/home_feed_screen.dart';
import 'package:cooknow/features/notifications/presentation/page/notification_screen.dart';
import 'package:cooknow/features/posts/presentation/page/create_post_screen.dart';
import 'package:cooknow/features/search/presentation/page/result_search_screen.dart';
import 'package:cooknow/features/search/presentation/page/search_screen.dart';
import 'package:cooknow/features/user/application/user_service.dart';
import 'package:cooknow/features/user/data/repositories/impl/user_repository_imp.dart';
import 'package:cooknow/features/user/presentation/page/change_profile_screen.dart';
import 'package:cooknow/features/user/presentation/page/profile_screen.dart';
import 'package:cooknow/features/user/presentation/page/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_app.g.dart';

class RouteName {
  static const home = '/';
  static const detailPost = 'detail-post';
  static const listUserScreen = 'list-user-screen';
  static const search = '/search';
  static const resultSearch = 'result-search';
  static const createPost = '/create-post';
  static const notification = '/notification';
  static const profile = '/profile';
  static const profileUser = 'profile-user'; // Profile of another user
  static const settings = 'settings';
  static const changeInfoProfile = 'change-info-profile';
  static const welcome = '/welcome';
  static const auth = '/auth';
  static const login = '/login';
  static const registerUserInfo = '/user-info';
  static const registerAccountInfo = 'account-info';
  static const registerVerifyCode = 'verify-code';
  static const registerWelcome = 'welcome';

  static const publicRoute = [
    welcome,
    auth,
    login,
    registerUserInfo,
    registerAccountInfo,
    registerVerifyCode,
    registerWelcome,
  ];

  static const bottomRouteMap = {
    home: HomeFeedScreen(),
    search: SearchScreen(),
    createPost: CreatePostScreen(),
    notification: NotificationScreen(),
    profile: ProfileScreen(),
  };
}

final _key = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  final authService = ref.read(authServiceProvider);
  final userService = ref.read(userServiceProvider);

  authService.token.then((token) {
    if (token != null) {
      authService.validateToken().then((_) async {
        final decodedToken = decodeToken(token);
        await userService.fetchUserWhenLogin(decodedToken['id']);
      }).catchError((error) {
        if (error is TokenExpiredException) {
          showError(_key.currentContext!, error.message);
        } else if (error is AppException) {
          showError(_key.currentContext!, error.message);
        } else {
          showError(_key.currentContext!, error.toString());
        }
      });
    }
  });

  return GoRouter(
    navigatorKey: _key,
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: (context, state) async {
      final path = state.uri.path;
      if (userRepository.currentUser != null) {
        if (RouteName.publicRoute.contains(path)) {
          return RouteName.home;
        }
        return null;
      } else {
        if ((RouteName.publicRoute.contains(path) ||
                RouteName.publicRoute.contains(path.split('/').last)) &&
            path != RouteName.welcome) {
          return null;
        }
        return RouteName.welcome;
      }
    },
    refreshListenable: GoRouterRefreshStream(userRepository.userStateChanges()),
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // ScaffoldWithNestedNavigation is a custom widget that wraps the navigationShell
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: RouteName.bottomRouteMap.entries
            .map(
              (entry) => StatefulShellBranch(
                navigatorKey: GlobalKey<NavigatorState>(
                    debugLabel: 'shell${entry.key.substring(1)}'),
                routes: [
                  GoRoute(
                    path: entry.key,
                    pageBuilder: (context, state) =>
                        NoTransitionPage(child: entry.value),
                    routes: [
                      if (entry.key == RouteName.home) ...[
                        GoRoute(
                          path: RouteName.detailPost,
                          builder: (context, state) => DetailPostScreen(
                            id: (state.extra as Map<String, dynamic>)['id']
                                as String,
                            isScrollToComment: (state.extra as Map<String,
                                dynamic>)['isScrollToComment'] as bool,
                          ),
                        ),
                        GoRoute(
                          path: RouteName.listUserScreen,
                          builder: (context, state) {
                            late List<String> listUserId;
                            try {
                              listUserId = (state.extra
                                      as Map<String, dynamic>)['listUserId']
                                  as List<String>;
                            } catch (e) {
                              listUserId = ((state.extra
                                          as Map<String, dynamic>)['listUserId']
                                      as List<dynamic>)
                                  .map((e) => e as String)
                                  .toList();
                            }
                            return ListUserScreen(
                              title: (state.extra
                                  as Map<String, dynamic>)['title'] as String,
                              listUserId: listUserId,
                            );
                          },
                        ),
                        GoRoute(
                          path: RouteName.profileUser,
                          builder: (context, state) => ProfileScreen(
                            userId: state.extra as String,
                          ),
                        )
                      ],
                      if (entry.key == RouteName.search) ...[
                        GoRoute(
                          path: RouteName.resultSearch,
                          builder: (context, state) =>
                              ResultSearchScreen(search: state.extra as String),
                        ),
                      ],
                      if (entry.key == RouteName.profile) ...[
                        GoRoute(
                          path: RouteName.settings,
                          builder: (context, state) => const SettingScreen(),
                        ),
                        GoRoute(
                          path: RouteName.changeInfoProfile,
                          builder: (context, state) =>
                              const ChangeProfileScreen(),
                        )
                      ],
                    ],
                  )
                ],
              ),
            )
            .toList(),
      ),
      GoRoute(
          path: RouteName.welcome,
          builder: (context, state) => const WelcomeScreen()),
      GoRoute(
        path: RouteName.auth,
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: RouteName.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RouteName.registerUserInfo,
        builder: (context, state) => const RegisterUserInfoScreen(),
        routes: [
          GoRoute(
            path: RouteName.registerAccountInfo,
            builder: (context, state) => const RegisterAccountInfoScreen(),
          ),
          GoRoute(
            path: RouteName.registerVerifyCode,
            builder: (context, state) => const RegisterVerifyCodeScreen(),
          ),
          GoRoute(
            path: RouteName.registerWelcome,
            builder: (context, state) => const RegisterWelcome(),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}

@riverpod
class Notification extends _$Notification {
  @override
  bool build() => false;

  void haveNotification() {
    state = true;
  }

  void noNotification() {
    state = false;
  }
}
