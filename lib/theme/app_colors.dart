import 'package:flutter/material.dart';

class AppColors {
  // Backgrounds
  static const Color bgBlack = Color(0xFF02040B);
  static const Color bgPurpleSpot = Color(0xFF3C0366);

  // Neon Accents
  static const Color neonBlue = Color(0xFF00D3F2);
  static const Color neonPurple = Color(0xFFC27AFF);

  // Glass/Pill Colors
  static const Color pillBorder = Color(0xFFAD46FF);
  static const Color pillFill = Color(0xFF9810FA);
  static const Color textPillColor = Color(0xFFDAB2FF);

  // --- NEW: BLUE DOMINANT HEADER COLORS ---
  // Start with a deep blue/purple instead of pink/purple
  static const Color headerGradientStart = Color(0xFF4801FF); 
  // End with the bright Neon Blue
  static const Color headerGradientEnd = Color(0xFF00D3F2); 
  // Change shadow to Blue so the glow matches
  static const Color headerGlowColor = Color(0xFF00D3F2); 


  // Gradients
  static const LinearGradient textGradient = LinearGradient(
    colors: [neonPurple, neonBlue],
  );

  static const LinearGradient textGradientReverse = LinearGradient(
    colors: [neonBlue, neonPurple],
  );
}