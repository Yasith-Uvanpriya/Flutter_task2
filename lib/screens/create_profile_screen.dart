import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';
import '../components/glow_header.dart';
import '../components/gradient_text.dart';
import '../components/neon_button.dart';
import '../components/custom_input_field.dart';
import '../components/info_box.dart';
import 'select_path_screen.dart'; // Import the next screen

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
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
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

                  // --- UPDATED BUTTON WITH SLIDE TRANSITION ---
                  // This removes the "Shadow/Ghost" effect completely
                  NeonButton(
                    text: "CONTINUE",
                    iconPath: 'assets/icons/icon4.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) =>
                              const SelectPathScreen(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            // Slide from Right to Left
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            // Uses a smooth curve for a premium feel
                            const curve = Curves.easeOutQuart;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 20),

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