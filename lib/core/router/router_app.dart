import 'dart:developer';

import 'package:cooknow/core/constant/store_variable.dart';
import 'package:cooknow/core/router/go_router_refresh_stream.dart';
import 'package:cooknow/core/router/not_found_screen.dart';
import 'package:cooknow/core/utils/store_local_data.dart';
import 'package:cooknow/core/widget/home_screen.dart';
import 'package:cooknow/features/authentication/application/auth_service.dart';
import 'package:cooknow/features/authentication/presentation/page/auth_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/login_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_account_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_user_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_verify_code_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_welcome.dart';
import 'package:cooknow/features/authentication/presentation/page/welcome_screen.dart';
import 'package:cooknow/features/user/data/repositories/impl/http_user_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_app.g.dart';

class RouteName {
  static const home = '/';
  static const welcome = '/welcome';
  static const auth = '/auth';
  static const login = '/login';
  static const registerUserInfo = '/user-info';
  static const registerAccountInfo = 'account-info';
  static const registerVerifyCode = 'verify-code';
  static const registerWelcome = 'welcome';

  static const publicRoutes = [
    auth,
    login,
    registerUserInfo,
    registerAccountInfo,
    registerVerifyCode,
    registerWelcome,
  ];
}

final _key = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  final authService = ref.watch(authServiceProvider);
  final storeLocalData = StoreLocalData();

  return GoRouter(
    navigatorKey: _key,
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: (context, state) async {
      final token = await storeLocalData.getData(StoreVariable.token);
      bool validTokenResult =
          token != null ? await authService.validateToken(token) : false;
      log('validTokenResult: $validTokenResult');
      final isLoggedIn = validTokenResult || userRepository.currentUser != null;
      final path = state.uri.path;
      if (isLoggedIn) {
        if (!RouteName.publicRoutes.contains(path)) {
          return RouteName.home;
        }
      } else {
        if (RouteName.publicRoutes.contains(path)) {
          return null;
        }
      }
      return RouteName.welcome;
    },
    refreshListenable: GoRouterRefreshStream(userRepository.authStateChanges()),
    routes: [
      GoRoute(
          path: RouteName.home,
          name: RouteName.home,
          builder: (context, state) => const HomeScreen()),
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
