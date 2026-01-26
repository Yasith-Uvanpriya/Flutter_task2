import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart'; // 1. Import GoRouter
import '../theme/app_colors.dart';
import '../theme/app_sizes.dart'; // 2. Import AppSizes
import '../components/glow_header.dart';
import '../components/gradient_text.dart';
import '../components/neon_button.dart';
import '../components/custom_input_field.dart';
import '../components/info_box.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBlack,
      body: Stack(
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  AppColors.bgPurpleSpot.withOpacity(0.4),
                  Colors.black,
                ],
                stops: const [0.0, 0.4, 1.0],
              ),
            ),
          ),

          // Main Content
          SafeArea(
            child: SingleChildScrollView(
              // Use AppSizes for padding
              padding: const EdgeInsets.fromLTRB(AppSizes.p30, AppSizes.p50, AppSizes.p30, AppSizes.p20),
              child: Column(
                children: [
                  AppSizes.gap10,

                  // Header Icon
                  const GlowHeader(iconPath: 'assets/icons/icon3.png'),

                  AppSizes.gap20,

                  // Title
                  GradientText(
                    text: "CREATE PROFILE",
                    gradient: AppColors.textGradient,
                    style: GoogleFonts.orbitron(
                      fontSize: 30,
                      letterSpacing: 1.5,
                    ),
                  ),

                  AppSizes.gap8,

                  // Subtitle
                  Text(
                    "Register your identity with the System",
                    style: GoogleFonts.rajdhani(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),

                  AppSizes.gap30,

                  // Custom Input Field
                  const CustomInputField(
                    label: "HUNTER NAME",
                    hintText: "Enter your name",
                    helperText: " This name will be displayed throughout your journey",
                  ),

                  AppSizes.gap20,

                  // Info Box 1
                  const InfoBox(
                    title: "INITIAL ASSIGNMENT",
                    body: "Your true potential will be revealed through dedication.",
                    backgroundColor: AppColors.purpleBoxBg,
                    borderColor: AppColors.purpleBoxBorder,
                    titleColor: AppColors.purpleBoxTitle,
                  ),

                  const SizedBox(height: 15), // Keeping strictly visual tweak or replace with AppSizes.gap16

                  // Info Box 2
                  const InfoBox(
                    title: "SYSTEM RECORD",
                    body: "The System will track your progress, achievements, and growth permanently.",
                    backgroundColor: AppColors.blueBoxBg,
                    borderColor: AppColors.blueBoxBorder,
                    titleColor: AppColors.blueBoxTitle,
                  ),

                  AppSizes.gap30,

                  // --- UPDATED BUTTON WITH GO ROUTER ---
                  NeonButton(
                    text: "CONTINUE",
                    iconPath: 'assets/icons/icon4.png',
                    onPressed: () {
                      // Simple, clean navigation
                      // The 'Slide' transition is handled in app_router.dart
                      context.push('/select-path');
                    },
                  ),

                  AppSizes.gap20,

                  // Dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDot(false),
                      _buildDot(true), // Active
                      _buildDot(false),
                      _buildDot(false),
                    ],
                  ),

                  AppSizes.gap10,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? AppColors.neonPurple : Colors.white.withOpacity(0.2),
      ),
    );
  }
}