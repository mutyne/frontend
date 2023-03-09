import 'package:go_router/go_router.dart';

import 'package:mutyne/features/authentication/views/login_screen.dart';
import 'package:mutyne/features/authentication/views/signup_screen.dart';
import 'package:mutyne/features/authentication/views/password_screen.dart';

class AppRouter {
  static final router = GoRouter(
      initialLocation: "/login",
      redirect: (context, state) {
        // 추가 예정
        return null;
      },
      routes: [
        GoRoute(
            path: LoginScreen.routeURL,
            name: LoginScreen.routeName,
            builder: (context, state) => const LoginScreen(),
            routes: [
              GoRoute(
                path: PasswordScreen.routeURL,
                name: PasswordScreen.routeName,
                builder: (context, state) => const PasswordScreen(),
              ),
            ]),
        GoRoute(
          path: SignupScreen.routeURL,
          name: SignupScreen.routeName,
          builder: (context, state) => const SignupScreen(),
        )
      ]);
}
