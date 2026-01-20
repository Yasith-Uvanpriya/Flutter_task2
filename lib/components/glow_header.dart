import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class GlowHeader extends StatelessWidget {
  final String iconPath;

  const GlowHeader({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,  // Reduced from 100
      height: 85, // Reduced from 100
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [
            AppColors.headerGradientStart,
            AppColors.headerGradientEnd,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.2, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.headerGlowColor.withOpacity(0.65),
            blurRadius: 40,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          iconPath,
          width: 40, // Reduced from 50
          color: Colors.white,
        ),
      ),
    );
  }
}