import 'package:cooknow/features/authentication/presentation/page/auth_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/login_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_account_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_user_info_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_verify_code_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/register/register_welcome.dart';
import 'package:cooknow/features/authentication/presentation/page/welcome_screen.dart';
import 'package:cooknow/core/widget/home_screen.dart';
import 'package:go_router/go_router.dart';

class RouterApp {
  static const bool _isAuth = true;
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>
            _isAuth ? const HomeScreen() : const WelcomeScreen(),
      ),
      GoRoute(
        path: AuthScreen.routeName,
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: LoginScreen.routeName,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RegisterUserInfoScreen.routeName,
        builder: (context, state) => const RegisterUserInfoScreen(),
      ),
      GoRoute(
        path: RegisterAccountInfoScreen.routeName,
        builder: (context, state) => const RegisterAccountInfoScreen(),
      ),
      GoRoute(
        path: RegisterVerifyCodeScreen.routeName,
        builder: (context, state) => const RegisterVerifyCodeScreen(),
      ),
      GoRoute(
        path: RegisterWelcome.routeName,
        builder: (context, state) => const RegisterWelcome(),
      ),
    ],
  );
}
