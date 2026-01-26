import 'package:flutter/material.dart';
import 'theme/app_colors.dart';
import 'router/app_router.dart'; // Import the router

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( // Changed to .router
      title: 'Solo Leveling UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.bgBlack,
      ),
      // Connect GoRouter
      routerConfig: AppRouter.router, 
    );
  }
}