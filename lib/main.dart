import 'package:flutter/material.dart';
import 'theme/app_colors.dart'; // <--- Make sure this is imported
import 'screens/welcome_screen.dart';

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
        // --- THIS LINE STOPS THE FLASHING ---
        scaffoldBackgroundColor: AppColors.bgBlack, 
      ),
      home: const WelcomeScreen(),
    );
  }
}