import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/path_card.dart';
import '../components/indicator_dot.dart';

class SelectPathScreen extends StatefulWidget {
  const SelectPathScreen({super.key});

  @override
  State<SelectPathScreen> createState() => _SelectPathScreenState();
}

class _SelectPathScreenState extends State<SelectPathScreen> {
  int _selectedIndex = -1;

  final List<Map<String, dynamic>> _classes = [
    // 1. FIGHTER
    {
      'title': 'FIGHTER',
      'description': 'Masters of close combat and physical prowess',
      'iconPath': 'assets/icons/icon5.png',
      'borderColor': const Color(0xFFFB2C36),
      'topHighlightColor': const Color(0xFFFB2C36),
      'cardBgGradient': LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFF82181A).withOpacity(0.2),
          const Color(0xFF7E2A0C).withOpacity(0.2),
        ],
      ),
      'iconBgGradient': const LinearGradient(
        colors: [Color(0xFFFB2C36), Color(0xFFFF6900)],
      ),
      'tag1Text': 'Focus: Strength & Vitality',
      'tag1Color': const Color(0xFFC27AFF),
      'tag2Text': 'Direct confrontation',
      'tag2Color': const Color(0xFF00D3F2),
    },
    // 2. ASSASSIN
    {
      'title': 'ASSASSIN',
      'description': 'Swift and deadly, striking from the shadows',
      'iconPath': 'assets/icons/icon6.png',
      'borderColor': const Color(0xFFAD46FF),
      'topHighlightColor': const Color(0xFFAD46FF),
      'cardBgGradient': LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFF59168B).withOpacity(0.2),
          const Color(0xFF861043).withOpacity(0.2),
        ],
      ),
      'iconBgGradient': const LinearGradient(
        colors: [Color(0xFFAD46FF), Color(0xFFF6339A)],
      ),
      'tag1Text': 'Focus: Agility & Precision',
      'tag1Color': const Color(0xFFC27AFF),
      'tag2Text': 'Speed-based attacks',
      'tag2Color': const Color(0xFF00D3F2),
    },
    // 3. MAGE
    {
      'title': 'MAGE',
      'description': 'Wielders of arcane power and devastating spells',
      'iconPath': 'assets/icons/icon1.png',
      'borderColor': const Color(0xFF2B7FFF),
      'topHighlightColor': const Color(0xFF2B7FFF),
      'cardBgGradient': LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFF2B7FFF).withOpacity(0.2),
          const Color(0xFF00B8DB).withOpacity(0.2),
        ],
      ),
      'iconBgGradient': const LinearGradient(
        colors: [Color(0xFF2B7FFF), Color(0xFF00B8DB)],
      ),
      'tag1Text': 'Focus: Intelligence & Mana',
      'tag1Color': const Color(0xFFC27AFF),
      'tag2Text': 'Ranged magic attacks',
      'tag2Color': const Color(0xFF00D3F2),
    },
    // 4. TANK
    {
      'title': 'TANK',
      'description': 'Immovable defenders who protect allies',
      'iconPath': 'assets/icons/icon7.png', 
      'borderColor': const Color(0xFF00C950), // Green
      'topHighlightColor': const Color(0xFF00C950),
      'cardBgGradient': LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFF0D542B).withOpacity(0.2), 
          const Color(0xFF004F3B).withOpacity(0.2), 
        ],
      ),
      'iconBgGradient': const LinearGradient(
        colors: [Color(0xFF00C950), Color(0xFF00BC7D)],
      ),
      'tag1Text': 'Focus: Defense & Endurance',
      'tag1Color': const Color(0xFFC27AFF),
      'tag2Text': 'Damage absorption',
      'tag2Color': const Color(0xFF00D3F2),
    },
    // 5. STRATEGIST
    {
      'title': 'STRATEGIST',
      'description': 'Tactical geniuses who outthink their opponents',
      'iconPath': 'assets/icons/icon8.png', 
      'borderColor': const Color(0xFFF0B100), // Gold
      'topHighlightColor': const Color(0xFFF0B100),
      'cardBgGradient': LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFF733E0A).withOpacity(0.2), 
          const Color(0xFF7B3306).withOpacity(0.2), 
        ],
      ),
      'iconBgGradient': const LinearGradient(
        colors: [Color(0xFFF0B100), Color(0xFFFE9A00)],
      ),
      'tag1Text': 'Focus: Intelligence & Perception',
      'tag1Color': const Color(0xFFC27AFF),
      'tag2Text': 'Buff allies, debuff enemies',
      'tag2Color': const Color(0xFF00D3F2),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fallback
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(0, 0, 0, 1),
              Color.fromRGBO(60, 3, 102, 0.4),
              Color.fromRGBO(0, 0, 0, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                
                // --- TITLE ---
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      Color.fromRGBO(194, 122, 255, 1),
                      Color.fromRGBO(0, 211, 242, 1),
                    ],
                  ).createShader(bounds),
                  child: Text(
                    'SELECT YOUR\nPATH',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.orbitron(
                      fontSize: 30,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                
                const SizedBox(height: 16),
                
                Text(
                  'Choose your combat specialization. This determines your initial stat distribution.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rajdhani(
                    fontSize: 14,
                    color: const Color.fromRGBO(153, 161, 175, 1),
                  ),
                ),
                
                const SizedBox(height: 32),

                // --- CARD LIST (All 5 Cards) ---
                ...List.generate(_classes.length, (index) {
                  final data = _classes[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: PathCard(
                      title: data['title'],
                      description: data['description'],
                      iconAssetPath: data['iconPath'],
                      cardBackgroundGradient: data['cardBgGradient'],
                      iconBackgroundGradient: data['iconBgGradient'],
                      topHighlightColor: data['topHighlightColor'],
                      borderColor: data['borderColor'],
                      tag1Text: data['tag1Text'],
                      tag1ThemeColor: data['tag1Color'],
                      tag2Text: data['tag2Text'],
                      tag2ThemeColor: data['tag2Color'],
                      isSelected: _selectedIndex == index,
                      onTap: () {
                        setState(() => _selectedIndex = index);
                      },
                    ),
                  );
                }),

                // --- THE NOTE BOX (Added Here) ---
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30), // Match card width padding?
                  // Or use SizedBox like friend's code:
                  child: SizedBox(
                    width: 328.66,
                    // height: 122.43, // Let it grow dynamically if needed, or fix it
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(17.1, 13.11, 17.1, 17.1),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(173, 70, 255, 0.3),
                        ),
                        color: const Color.fromRGBO(89, 22, 139, 0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NOTE',
                            style: GoogleFonts.rajdhani(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.3,
                              color: const Color.fromRGBO(194, 122, 255, 1),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Your class choice affects initial stats but does not limit your growth. All stats can be improved through training and quests.',
                            style: GoogleFonts.rajdhani(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0,
                              color: const Color.fromRGBO(209, 213, 220, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25), // Spacing before button

                // --- CONFIRM BUTTON ---
                GestureDetector(
                  onTap: _selectedIndex == -1 ? null : () {
                    print("Selected: $_selectedIndex");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF9810FA), Color(0xFF0092B8)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(1.5),
                    child: Container(
                      height: 60,
                      width: 345,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CONFIRM SELECTION',
                            style: GoogleFonts.orbitron(
                              fontSize: 16,
                              letterSpacing: 0.8,
                              color: const Color(0xFFEEEEEE),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward, color: Color(0xFFEEEEEE)),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 34),

                // --- DOTS ---
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IndicatorDot(isActive: true),
                    SizedBox(width: 8),
                    IndicatorDot(isActive: true),
                    SizedBox(width: 8),
                    IndicatorDot(isActive: false),
                    SizedBox(width: 8),
                    IndicatorDot(isActive: false),
                  ],
                ),
                
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}