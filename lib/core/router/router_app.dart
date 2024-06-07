import 'package:cooknow/features/authentication/presentation/page/auth_screen.dart';
import 'package:cooknow/features/authentication/presentation/page/welcome_screen.dart';
import 'package:go_router/go_router.dart';

class RouterApp {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/auth',
        builder: (context, state) => const AuthScreen(),
      ),
    ],
  );
}
