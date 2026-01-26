import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PathCard extends StatelessWidget {
  final String title;
  final String description;
  final String iconAssetPath;
  final LinearGradient cardBackgroundGradient;
  final LinearGradient iconBackgroundGradient;
  final Color topHighlightColor;
  final Color borderColor;
  final String tag1Text;
  final Color tag1ThemeColor;
  final String tag2Text;
  final Color tag2ThemeColor;
  
  // Interactive properties
  final bool isSelected;
  final VoidCallback onTap;

  const PathCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconAssetPath,
    required this.cardBackgroundGradient,
    required this.iconBackgroundGradient,
    required this.topHighlightColor,
    required this.tag1Text,
    required this.tag1ThemeColor,
    required this.tag2Text,
    required this.tag2ThemeColor,
    required this.borderColor,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 240.06,
        width: 328.66,
        child: Stack(
          children: [
            // 1. MAIN CARD CONTAINER
            Container(
              decoration: BoxDecoration(
                // If selected, make the border brighter and thicker
                border: Border.all(
                  color: isSelected ? topHighlightColor.withOpacity(1.0) : borderColor.withOpacity(0.4),
                  width: isSelected ? 2.0 : 1.0,
                ),
                gradient: cardBackgroundGradient,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: SizedBox(
                  height: 193.86,
                  width: 284.46,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ICON CONTAINER
                      Container(
                        height: 55.99,
                        width: 55.99,
                        decoration: BoxDecoration(
                          gradient: iconBackgroundGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(
                          iconAssetPath,
                          fit: BoxFit.contain,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 16),
                      // TEXT CONTENT
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.orbitron(
                                fontSize: 20,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFEEEEEE),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              description,
                              style: GoogleFonts.rajdhani(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFD1D5DC),
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 12),
                            // TAGS
                            _buildCustomTag(tag1Text, tag1ThemeColor),
                            const SizedBox(height: 8),
                            _buildCustomTag(tag2Text, tag2ThemeColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            // 2. TOP SIDE HIGHLIGHT (The "Linear Thing")
            // This sits ON TOP of the container
            Positioned(
              top: 0, 
              left: 0,
              right: 0,
              child: Container(
                height: 6, 
                decoration: BoxDecoration(
                  color: topHighlightColor, // This creates the bold line
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: topHighlightColor.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    )
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTag(String text, Color themeColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: themeColor.withOpacity(0.3), width: 1.11),
      ),
      child: Text(
        text,
        style: GoogleFonts.rajdhani(
          color: themeColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}