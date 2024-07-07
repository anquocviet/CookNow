import 'package:cooknow/core/widget/home_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/auth_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/login_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_account_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_user_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_verify_code_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_welcome.dart';
import 'package:go_router/go_router.dart';

class RouteName {
  static const home = '/';
  static const auth = '/auth';
  static const login = '/login';
  static const registerUserInfo = '/register/user-info';
  static const registerAccountInfo = '/register/account-info';
  static const registerVerifyCode = '/register/verify-code';
  static const registerWelcome = '/register/welcome';

  static const publicRoutes = [
    auth,
    login,
    registerUserInfo,
    registerAccountInfo,
    registerVerifyCode,
    registerWelcome,
  ];
}

class RouterApp {
  static final router = GoRouter(
    redirect: (context, state) {
      if (RouteName.publicRoutes.contains(state.fullPath)) {
        return null;
      }
      return RouteName.auth;
    },
    routes: [
      GoRoute(
          path: RouteName.home,
          builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: RouteName.auth,
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: RouteName.auth,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RouteName.registerUserInfo,
        builder: (context, state) => const RegisterUserInfoScreen(),
      ),
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
  );
}
