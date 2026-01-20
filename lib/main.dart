import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'theme/app_colors.dart'; // <--- 1. Import this

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solo Leveling UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.bgBlack, // <--- 2. Set global dark background
      ),
      home: const WelcomeScreen(),
    );
  }
}