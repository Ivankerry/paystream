// lib/widgets/custom_app_bar.dart
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';
import '../models/user_account.dart';

class CustomAppBar extends StatelessWidget {
  final UserAccount userAccount;

  const CustomAppBar({Key? key, required this.userAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/profile_image.png'),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userAccount.greeting, style: AppStyles.subheading),
                Text(userAccount.name, style: AppStyles.heading),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.refresh, color: AppColors.primaryText, size: 16),
                SizedBox(width: 10),
                Icon(
                  Icons.notifications_outlined,
                  color: AppColors.primaryText,
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
