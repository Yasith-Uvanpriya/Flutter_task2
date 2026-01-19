import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';
import '../components/neon_button.dart';
import '../components/gradient_text.dart';
import '../components/glow_header.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBlack,
      body: Stack(
        children: [
          // Background Glow
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

          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  
                  // Reusable Glow Header
                  const GlowHeader(iconPath: 'assets/icons/icon1.png'),
                  
                  const SizedBox(height: 40),

                  // System Notification Pill (Inline implementation for now)
                  Container(
                    width: 225,
                    height: 35,
                    decoration: BoxDecoration(
                      color: AppColors.pillFill.withOpacity(0.20),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: AppColors.pillBorder.withOpacity(0.30),
                        width: 1.11,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/icon2.png', width: 14, color: AppColors.textPillColor),
                        const SizedBox(width: 8),
                        Text(
                          "SYSTEM NOTIFICATION",
                          style: GoogleFonts.orbitron(
                            color: AppColors.textPillColor,
                            fontSize: 12,
                            letterSpacing: 0.6,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Reusable Gradient Text
                  GradientText(
                    text: "YOU HAVE BEEN",
                    gradient: AppColors.textGradient,
                    style: GoogleFonts.orbitron(
                      fontSize: 40,
                      letterSpacing: 1.5,
                    ),
                  ),
                  GradientText(
                    text: "SELECTED",
                    gradient: AppColors.textGradientReverse,
                    style: GoogleFonts.orbitron(
                      fontSize: 40,
                      letterSpacing: 1.5,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "You have been chosen as a Player.\nComplete awakening to unlock unlimited growth potential.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 12,
                      height: 1.5,
                    ),
                  ),

                  const Spacer(flex: 1),

                  // Reusable Neon Button
                  NeonButton(
                    text: "START AWAKENING",
                    onPressed: () {
                      print("Navigating to next screen...");
                    },
                  ),

                  const SizedBox(height: 20),
                  
                  Text(
                    "The System is watching. The System is waiting.",
                    style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 10),
                  ),
                  
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}