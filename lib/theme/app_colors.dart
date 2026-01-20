import 'package:flutter/material.dart';

class AppColors {
  // Backgrounds
  static const Color bgBlack = Color(0xFF02040B);
  static const Color bgPurpleSpot = Color(0xFF3C0366);
  static const Color inputBg = Color(0x99000000); // #000000 at 60% opacity

  // Neon Accents
  static const Color neonBlue = Color(0xFF00D3F2);
  static const Color neonPurple = Color(0xFFC27AFF);

  // Glass/Pill/Border Colors
  static const Color pillBorder = Color(0xFFAD46FF);
  static const Color pillFill = Color(0xFF9810FA);
  static const Color textPillColor = Color(0xFFDAB2FF);

  // Text Colors
  static const Color textGrey = Color(0xFF6A7282);
  static const Color textLightGrey = Color(0xFFD1D5DC);

  // Header Colors
  static const Color headerGradientStart = Color(0xFF4801FF);
  static const Color headerGradientEnd = Color(0xFF00D3F2);
  static const Color headerGlowColor = Color(0xFF00D3F2);

  // --- NEW: Info Box Specific Colors ---
  // Purple Box (Initial Assignment)
  static const Color purpleBoxBg = Color(0xFF59168B); //
  static const Color purpleBoxBorder = Color(0xFFAD46FF); //
  static const Color purpleBoxTitle = Color(0xFFC27AFF); //

  // Blue Box (System Record)
  static const Color blueBoxBg = Color(0xFF104E64); //
  static const Color blueBoxBorder = Color(0xFF00B8DB); //
  static const Color blueBoxTitle = Color(0xFF00D3F2); //

  // Gradients
  static const LinearGradient textGradient = LinearGradient(
    colors: [neonPurple, neonBlue],
  );

  static const LinearGradient textGradientReverse = LinearGradient(
    colors: [neonBlue, neonPurple],
  );
}