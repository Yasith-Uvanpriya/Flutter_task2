import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart'; // 1. Import GoRouter
import '../theme/app_colors.dart';
import '../theme/app_sizes.dart'; // 2. Import AppSizes
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
          // 1. Fixed Background
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

          // 2. Scrollable Content Wrapper
          LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: SafeArea(
                      child: Padding(
                        // Use consistent screen padding
                        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Flexible spacer at top
                            const Spacer(flex: 1),

                            const GlowHeader(iconPath: 'assets/icons/icon1.png'),

                            // Use AppSizes for gaps
                            AppSizes.gap40,

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
                                  Image.asset(
                                    'assets/icons/icon2.png',
                                    width: AppSizes.iconSmall, // 14.0
                                    color: AppColors.textPillColor,
                                  ),
                                  AppSizes.gap8,
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

                            AppSizes.gap30,

                            GradientText(
                              text: "YOU HAVE BEEN",
                              gradient: AppColors.textGradient,
                              style: GoogleFonts.orbitron(
                                fontSize: 30,
                                letterSpacing: 1.5,
                              ),
                            ),
                            GradientText(
                              text: "SELECTED",
                              gradient: AppColors.textGradientReverse,
                              style: GoogleFonts.orbitron(
                                fontSize: 30,
                                letterSpacing: 1.5,
                              ),
                            ),

                            AppSizes.gap20,

                            Text(
                              "You have been chosen as a Player.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: const Color.fromARGB(255, 248, 247, 247),
                                fontSize: 16,
                                height: 1.5,
                              ),
                            ),

                            AppSizes.gap8,

                            Text(
                              "Complete awakening to unlock unlimited growth potential.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontSize: 14,
                                height: 1.5,
                              ),
                            ),

                            // Fixed spacer to bring button closer to text
                            AppSizes.gap50,

                            NeonButton(
                              text: "START AWAKENING",
                              onPressed: () {
                                // 3. Use GoRouter Navigation
                                // The transitions are handled in app_router.dart
                                context.push('/create-profile');
                              },
                            ),

                            AppSizes.gap20,

                            Text(
                              "The System is watching. The System is waiting.",
                              style: GoogleFonts.rajdhani(
                                color: Colors.white.withOpacity(0.3),
                                fontSize: 12,
                              ),
                            ),

                            // Spacer at bottom
                            const Spacer(flex: 1),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}