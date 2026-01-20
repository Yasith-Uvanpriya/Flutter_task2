import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';

class NeonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String? iconPath;

  const NeonButton({
    super.key, 
    required this.text, 
    required this.onPressed,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48, // Reduced from 55
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.neonBlue, width: 1),
        boxShadow: [
          BoxShadow(
            color: AppColors.neonBlue.withOpacity(0.3),
            blurRadius: 12,
            spreadRadius: 1,
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onPressed,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  style: GoogleFonts.orbitron(
                    color: Colors.white,
                    fontSize: 15, // Reduced from 16
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (iconPath != null) ...[
                  const SizedBox(width: 10),
                  Image.asset(
                    iconPath!,
                    height: 14, // Reduced from 16
                    color: Colors.white,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}