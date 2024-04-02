import 'package:flutter/material.dart';

class TColors{
  TColors._();

  static const Color primary = Color(0xff400303);
  static const Color secondary = Color(0xff3f4a74);
  static const Color accent = Color(0xffd5e5d6);

  //gradient colors
  static const Gradient linearGradient1 = LinearGradient(
    colors: [
      Color(0xffFF5252), // Red
      Color(0xff2196F3), // Blue
      Color(0xff4CAF50), // Green
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.5, 1.0],
  );

  static const Gradient linearGradient2 = LinearGradient(
    colors: [
      Color(0xffFF9800), // Orange
      Color(0xff9C27B0), // Purple
      Color(0xff009688), // Teal
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0, 0.5, 1.0],
  );

  static const Gradient linearGradient3 = LinearGradient(
    colors: [
      Color(0xffFFC107), // Amber
      Color(0xff673AB7), // Deep Purple
      Color(0xff8BC34A), // Light Green
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 0.5, 1.0],
  );
  //Text Colors
  static const Color textPrimary = Color(0xff2e2e37);
  static const Color textSecondary = Color(0xff616178);
  static const Color textWhite = Color(0xffdadce5);
  
  //Background Colors
  static const Color light = Color(0xffdadce5);
  static const Color dark = Color(0xff303035);
  static const Color primaryBackground = Color(0xfffaecec);

  // Background Container Colors
  static const Color lightContainer = Color(0xffc5dccd);
  static const Color darkContainer = Color(0xff212521);

  // Button colors
  static const Color buttonPrimary = Color(0xff5e4386);
  static const Color buttonSecondary = Color(0xff646779);
  static const Color buttonDisabled = Color(0xff9da4c3);

  //Error and Validation Colors
  static const Color error = Color(0xffFF5252); // Red for error
  static const Color success = Color(0xff4CAF50); // Green for success
  static const Color warning = Color(0xffFFC107); // Yellow for warning
  static const Color info = Color(0xff2196F3); // Blue for info

  //Neutral Shades
  static const Color black = Color(0xff3f4a74);
  static const Color darkerGrey = Color(0xff2a2a2c);
  static const Color darkGrey = Color(0xff3c3c3f);
  static const Color grey = Color(0xff7b7b7d);
  static const Color softGrey = Color(0xffbcc4de);
  static const Color lightGrey = Color(0xffbec2d5);
  static const Color white = Color(0xffffffff);

}
