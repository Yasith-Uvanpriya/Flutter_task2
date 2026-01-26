import 'package:flutter/material.dart';

class AppSizes {
  // Padding & Margin Constants
  static const double p4 = 4.0;
  static const double p8 = 8.0;
  static const double p12 = 12.0;
  static const double p16 = 16.0;
  static const double p20 = 20.0;
  static const double p24 = 24.0;
  static const double p30 = 30.0;
  static const double p40 = 40.0;
  static const double p50 = 50.0;

  // Gap Constants (for SizedBox)
  static const gap4 = SizedBox(height: p4, width: p4);
  static const gap8 = SizedBox(height: p8, width: p8);
  static const gap10 = SizedBox(height: 10, width: 10);
  static const gap12 = SizedBox(height: p12, width: p12);
  static const gap16 = SizedBox(height: p16, width: p16);
  static const gap20 = SizedBox(height: p20, width: p20);
  static const gap30 = SizedBox(height: p30, width: p30);
  static const gap40 = SizedBox(height: p40, width: p40);
  static const gap50 = SizedBox(height: p50, width: p50);

  // Icon Sizes
  static const double iconSmall = 14.0;
  static const double iconMedium = 24.0;
  static const double iconLarge = 32.0;
  static const double iconXLarge = 40.0;

  // Screen Padding (Standard side padding for your app)
  static const EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: p30);
}