import 'package:flutter/material.dart';

// Define AppColors based on the provided HTML/CSS
class AppColors {
  static const Color background = Color(0xFF0d0d0d);
  static const Color panelBackground = Color(0xFF121212);
  static const Color inventoryBackground = Color(0xFF151515);
  static const Color fusionAreaBackground = Color(0xFF1a1a1a);
  static const Color inventoryItemBg = Color(0xFF1a1a1a);

  static const Color borderColor = Color(0xFF222222);
  static const Color fusionAreaBorder = Color(0xFF333333);

  static const Color primaryText = Color(0xFFf0f0f0);
  static const Color secondaryText = Color(0xFF888888); // For Fusion Area text
  static const Color gray400 = Color(0xFFA3A3A3); // For uppercase titles
  static const Color gray500 = Color(0xFF737373); // For info text
}

// Define AppTextStyles based on the provided HTML/CSS
class AppTextStyles {
  // Main text style (Inter, Roboto)
  static const TextStyle primary = TextStyle(
    fontFamily: 'Roboto', // Using Roboto as a default
    color: AppColors.primaryText,
    fontSize: 16,
  );

  // Uppercase titles (Discovery Log, Actions, Inventory)
  static const TextStyle uppercaseTitle = TextStyle(
    fontFamily: 'Roboto', // Using Roboto as a default
    color: AppColors.gray400,
    fontSize: 12,
    letterSpacing: 0.5, // For tracking-wider
    fontWeight: FontWeight.w500,
  );

  // Log entry text style
  static const TextStyle logEntry = TextStyle(
    fontFamily: 'RobotoMono', // Using RobotoMono as a default
    color: AppColors.primaryText,
    fontSize: 12,
  );

  // Fusion Area text style
  static const TextStyle fusionAreaText = TextStyle(
    fontFamily: 'Roboto', // Using Roboto as a default
    color: AppColors.secondaryText,
    fontSize: 14,
  );

  // Button text style
  static const TextStyle buttonText = TextStyle(
    fontFamily: 'Roboto', // Using Roboto as a default
    color: AppColors.primaryText,
    fontSize: 12,
  );

  // Info text style (text-2xs)
  static const TextStyle infoText = TextStyle(
    fontFamily: 'Roboto', // Using Roboto as a default
    color: AppColors.gray500,
    fontSize: 10,
  );
}
