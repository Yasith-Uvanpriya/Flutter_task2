import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/welcome_screen.dart';
import '../screens/create_profile_screen.dart';
import '../screens/select_path_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      // 1. Welcome Screen (Root)
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),

      // 2. Create Profile (Fade Transition from Welcome)
      GoRoute(
        path: '/create-profile',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const CreateProfileScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 600),
          );
        },
      ),

      // 3. Select Path (Slide Transition from Profile)
      GoRoute(
        path: '/select-path',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SelectPathScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0); // Slide from right
              const end = Offset.zero;
              const curve = Curves.easeOutQuart;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 500),
          );
        },
      ),
    ],
  );
}