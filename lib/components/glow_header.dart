import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class GlowHeader extends StatelessWidget {
  final String iconPath;

  const GlowHeader({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [
            AppColors.headerGradientStart,
            AppColors.headerGradientEnd,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // This "stops" property forces the Blue to appear sooner
          stops: [0.2, 1.0], 
        ),
        boxShadow: [
          BoxShadow(
            // Blue glow with high opacity
            color: AppColors.headerGlowColor.withOpacity(0.65),
            blurRadius: 40,
            spreadRadius: 2,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          iconPath,
          width: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}