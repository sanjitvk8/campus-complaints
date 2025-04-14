import 'package:flutter/material.dart';

/// 🎨 Color Palette
class AppColors {
  static const primary = Color(0xFF0066CC);      // Main app color
  static const secondary = Color(0xFF003366);    // Dark blue
  static const light = Color(0xFFF2F4F7);         // Backgrounds
  static const success = Colors.green;
  static const warning = Colors.orange;
  static const danger = Colors.red;
}

/// 🔠 Reusable Text Styles
class AppTextStyles {
  static const heading = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const subHeading = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  static const label = TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  static const body = TextStyle(fontSize: 16);
}

/// 📦 Padding & Margins
class AppPadding {
  static const defaultPadding = EdgeInsets.all(16.0);
  static const cardPadding = EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0);
}

/// 🧩 App-wide constants
class AppConstants {
  static const List<String> complaintCategories = [
    'Hostel',
    'Food',
    'Wi-Fi',
    'Electricity',
    'Others'
  ];

  static const List<String> statusTypes = [
    'Open',
    'In Progress',
    'Resolved'
  ];

  static const String adminRole = 'admin';
  static const String studentRole = 'student';
}
