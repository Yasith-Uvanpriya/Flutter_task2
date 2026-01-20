import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final String hintText;
  final String helperText;

  const CustomInputField({
    super.key,
    required this.label,
    required this.hintText,
    required this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.orbitron(
            color: AppColors.neonPurple,
            fontSize: 13, // Reduced from 14
            letterSpacing: 0.35,
          ),
        ),
        const SizedBox(height: 6), // Reduced gap
        Container(
          height: 45, // Reduced from 50
          decoration: BoxDecoration(
            color: AppColors.inputBg,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.pillBorder.withOpacity(0.30),
              width: 1.11,
            ),
          ),
          child: TextField(
            style: GoogleFonts.rajdhani(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
              hintText: hintText,
              hintStyle: GoogleFonts.rajdhani(color: Colors.white.withOpacity(0.5)),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          helperText,
          style: GoogleFonts.rajdhani(
            color: AppColors.textGrey,
            fontSize: 11, // Reduced from 12
          ),
        ),
      ],
    );
  }
}