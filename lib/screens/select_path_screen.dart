import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_colors.dart';
import '../components/gradient_text.dart';
import '../components/neon_button.dart';
import '../components/selection_card.dart';

class SelectPathScreen extends StatefulWidget {
  const SelectPathScreen({super.key});

  @override
  State<SelectPathScreen> createState() => _SelectPathScreenState();
}

class _SelectPathScreenState extends State<SelectPathScreen> {
  int _selectedIndex = -1; // Track selected card index

  // Data for the cards
  final List<Map<String, dynamic>> _classes = [
    {
      'title': 'FIGHTER',
      'description': 'Masters of close combat and physical prowess',
      'icon': Icons.security, // You can replace with Image.asset later
      'color': AppColors.fighterColor,
      'tags': ['Focus: Strength & Vitality', 'Direct confrontation, high damage output'],
    },
    {
      'title': 'ASSASSIN',
      'description': 'Swift and deadly, striking from the shadows',
      'icon': Icons.gps_fixed,
      'color': AppColors.assassinColor,
      'tags': ['Focus: Agility & Precision', 'Speed-based attacks, critical strikes'],
    },
    {
      'title': 'MAGE',
      'description': 'Wielders of arcane power and devastating spells',
      'icon': Icons.flash_on,
      'color': AppColors.mageColor,
      'tags': ['Focus: Intelligence & Mana', 'Ranged magic attacks, crowd control'],
    },
    {
      'title': 'TANK',
      'description': 'Immovable defenders who protect allies',
      'icon': Icons.shield,
      'color': AppColors.tankColor,
      'tags': ['Focus: Defense & Endurance', 'Damage absorption, team protection'],
    },
    {
      'title': 'STRATEGIST',
      'description': 'Tactical geniuses who outthink their opponents',
      'icon': Icons.psychology,
      'color': AppColors.strategistColor,
      'tags': ['Focus: Intelligence & Perception', 'Buff allies, debuff enemies, analyze weaknesses'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBlack,
      body: Stack(
        children: [
          // Background Gradient
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
              // Consistent padding with CreateProfileScreen
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  
                  // Header
                  Center(
                    child: GradientText(
                      text: "SELECT YOUR PATH",
                      gradient: AppColors.textGradient,
                      style: GoogleFonts.orbitron(
                        fontSize: 24, // Reduced from 28
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Subtitle
                  Center(
                    child: Text(
                      "Choose your combat specialization. This determines your initial stat distribution.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30), // Reduced from 40

                  // --- Selection Cards List ---
                  ...List.generate(_classes.length, (index) {
                    final classData = _classes[index];
                    return SelectionCard(
                      title: classData['title'],
                      description: classData['description'],
                      icon: classData['icon'],
                      accentColor: classData['color'],
                      tags: classData['tags'],
                      isSelected: _selectedIndex == index,
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    );
                  }),

                  const SizedBox(height: 10),
                  
                  // Note Section
                  Text(
                    "NOTE:",
                    style: GoogleFonts.rajdhani(
                      color: AppColors.neonPurple,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Your class choice affects initial stats but does not limit your growth. All stats can be improved through training and quests.",
                    style: GoogleFonts.rajdhani(
                      color: Colors.grey,
                      fontSize: 12,
                      height: 1.4,
                    ),
                  ),
                  
                  const SizedBox(height: 30),

                  // Confirm Button
                  NeonButton(
                    text: "CONFIRM SELECTION",
                    iconPath: 'assets/icons/icon4.png', 
                    onPressed: _selectedIndex == -1
                        ? () {
                            // Optional: Show snackbar telling user to select a class
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Please select a path to continue"),
                                backgroundColor: Colors.red,
                                duration: Duration(seconds: 1),
                              ),
                            );
                          } 
                        : () {
                            print("Selected Class Index: $_selectedIndex");
                            // Navigate to dashboard or next screen
                          },
                  ),
                  
                  const SizedBox(height: 20),

                  // Page Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDot(false),
                      _buildDot(false),
                      _buildDot(true), // Active dot
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