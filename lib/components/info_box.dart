import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';

class InfoBox extends StatelessWidget {
  final String title;
  final String body;
  final Color backgroundColor;
  final Color borderColor;
  final Color titleColor;

  const InfoBox({
    super.key,
    required this.title,
    required this.body,
    required this.backgroundColor,
    required this.borderColor,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // --- CHANGED: Increased padding from 12.0 to 16.0 to make the box bigger ---
      padding: const EdgeInsets.all(24.0), 
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.20),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: borderColor.withOpacity(0.30),
          width: 1.11,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.rajdhani(
              color: titleColor,
              fontSize: 11,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            body,
            style: GoogleFonts.rajdhani(
              color: AppColors.textLightGrey,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}