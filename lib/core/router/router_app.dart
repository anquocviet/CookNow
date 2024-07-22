import 'package:cooknow/core/exceptions/auth_exception.dart';
import 'package:cooknow/core/router/go_router_refresh_stream.dart';
import 'package:cooknow/core/router/not_found_screen.dart';
import 'package:cooknow/core/router/scaffold_with_nested_navigation.dart';
import 'package:cooknow/core/widget/show_error.dart';
import 'package:cooknow/features/authentication/application/auth_service.dart';
import 'package:cooknow/features/authentication/data/repositories/impl/http_auth_repository.dart';
import 'package:cooknow/features/authentication/presentation/page/auth_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/login_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_account_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_user_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_verify_code_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_welcome.dart';
import 'package:cooknow/features/authentication/presentation/page/welcome_screen.dart';
import 'package:cooknow/features/feeds/presentation/page/home_feed_screen.dart';
import 'package:cooknow/features/notifications/presentation/page/notification_screen.dart';
import 'package:cooknow/features/posts/presentation/page/create_post_screen.dart';
import 'package:cooknow/features/search/presentation/page/search_screen.dart';
import 'package:cooknow/features/user/presentation/page/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_app.g.dart';

class RouteName {
  static const home = '/';
  static const search = '/search';
  static const createPost = '/create-post';
  static const notification = '/notification';
  static const profile = '/profile';
  static const welcome = '/welcome';
  static const auth = '/auth';
  static const login = '/login';
  static const registerUserInfo = '/user-info';
  static const registerAccountInfo = 'account-info';
  static const registerVerifyCode = 'verify-code';
  static const registerWelcome = 'welcome';

  static const privateRouteMap = {
    home: HomeFeedScreen(),
    search: SearchScreen(),
    createPost: CreatePostScreen(),
    notification: NotificationScreen(),
    profile: ProfileScreen(),
  };
}

final _key = GlobalKey<NavigatorState>();

void _showModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const CreatePostScreen(),
    isScrollControlled: true,
  );
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final authService = ref.read(authServiceProvider);

  authService.validateToken().catchError((error) {
    if (error is TokenExpiredException) {
      showError(_key.currentContext!, error.message);
    }
  });

  return GoRouter(
    navigatorKey: _key,
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: (context, state) async {
      final path = state.uri.path;
      if (authRepository.isLoggedIn) {
        if (RouteName.privateRouteMap.keys.contains(path)) {
          return null;
        }
        return RouteName.home;
      }
      return RouteName.welcome;
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: RouteName.privateRouteMap.entries
            .map(
              (entry) => StatefulShellBranch(
                navigatorKey: GlobalKey<NavigatorState>(
                    debugLabel: 'shell${entry.key.substring(1)}'),
                routes: [
                  GoRoute(
                    path: entry.key,
                    pageBuilder: (context, state) =>
                        NoTransitionPage(child: entry.value),
                  )
                ],
              ),
            )
            .toList(),
      ),
      GoRoute(
          path: RouteName.welcome,
          name: RouteName.welcome,
          builder: (context, state) => const WelcomeScreen()),
      GoRoute(
        path: RouteName.auth,
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: RouteName.auth,
        builder: (context, state) => const LoginScreen(),
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
