import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle? style;
  final TextAlign? textAlign; // <--- 1. Add this new property

  const GradientText({
    super.key,
    required this.text,
    required this.gradient,
    this.style,
    this.textAlign, // <--- 2. Add to constructor
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        textAlign: textAlign, // <--- 3. Pass it to the Text widget
        style: style,
      ),
    );
  }
}