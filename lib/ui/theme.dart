import 'package:flutter/material.dart';

// Define AppColors based on the provided HTML/CSS
class AppColors {
  static const Color background = Color(0xFF1A1A2E); // Darker background
  static const Color panelBackground = Color(0xFF16213E); // Darker panel
  static const Color inventoryBackground = Color(0xFF0F3460); // Darker inventory
  static const Color fusionAreaBackground = Color(0xFF0A1128); // Even darker for fusion area
  static const Color inventoryItemBg = Color(0xFF0A1128);

  static const Color borderColor = Color(0xFF007ACC); // Blueish border
  static const Color fusionAreaBorder = Color(0xFF007ACC);

  static const Color primaryText = Color(0xFFE0E0E0); // Lighter text
  static const Color secondaryText = Color(0xFFB0B0B0); // Lighter secondary text
  static const Color gray400 = Color(0xFF90CAF9); // Blueish gray
  static const Color gray500 = Color(0xFF64B5F6); // Lighter blue
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
