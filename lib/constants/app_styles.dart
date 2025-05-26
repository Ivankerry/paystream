// lib/constants/app_styles.dart
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  static const TextStyle heading = TextStyle(
    color: AppColors.primaryText,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle subheading = TextStyle(
    color: AppColors.secondaryText,
    fontSize: 12,
  );

  static const TextStyle balanceAmount = TextStyle(
    color: AppColors.primaryText,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.primaryText,
    fontSize: 14,
  );

  static const TextStyle smallText = TextStyle(
    color: AppColors.secondaryText,
    fontSize: 10,
  );

  static const TextStyle transactionTitle = TextStyle(
    color: AppColors.primaryText,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle transactionDate = TextStyle(
    color: AppColors.secondaryText,
    fontSize: 12,
  );

  static const TextStyle transactionAmount = TextStyle(
    color: AppColors.primaryText,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}
// This file defines the text styles used throughout the app, ensuring consistency in typography.