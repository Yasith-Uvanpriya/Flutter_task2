import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';
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
              // --- CHANGED: Increased top padding from 20 to 50 ---
              padding: const EdgeInsets.fromLTRB(30, 70, 30, 20),
              child: Column(
                children: [
                  const SizedBox(height: 10),

                  // Header Icon
                  const GlowHeader(iconPath: 'assets/icons/icon3.png'),

                  const SizedBox(height: 20),

                  // Title
                  GradientText(
                    text: "CREATE PROFILE",
                    gradient: AppColors.textGradient,
                    style: GoogleFonts.orbitron(
                      fontSize: 24,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Subtitle
                  Text(
                    "Register your identity with the System",
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Custom Input Field
                  const CustomInputField(
                    label: "HUNTER NAME",
                    hintText: "Enter your name",
                    helperText: " This name will be displayed throughout your journey",
                  ),

                  const SizedBox(height: 20),

                  // Info Box 1
                  const InfoBox(
                    title: "INITIAL ASSIGNMENT",
                    body: "Your true potential will be revealed through dedication.",
                    backgroundColor: AppColors.purpleBoxBg,
                    borderColor: AppColors.purpleBoxBorder,
                    titleColor: AppColors.purpleBoxTitle,
                  ),

                  const SizedBox(height: 15),

                  // Info Box 2
                  const InfoBox(
                    title: "SYSTEM RECORD",
                    body: "The System will track your progress, achievements, and growth permanently.",
                    backgroundColor: AppColors.blueBoxBg,
                    borderColor: AppColors.blueBoxBorder,
                    titleColor: AppColors.blueBoxTitle,
                  ),

                  const SizedBox(height: 30),

                  // Button
                  NeonButton(
                    text: "CONTINUE",
                    iconPath: 'assets/icons/icon4.png',
                    onPressed: () {
                      print("Navigating to Select Path...");
                    },
                  ),

                  const SizedBox(height: 20),

                  // Dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDot(false),
                      _buildDot(true),
                      _buildDot(false),
                      _buildDot(false),
                    ],
                  ),

                  const SizedBox(height: 10),
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