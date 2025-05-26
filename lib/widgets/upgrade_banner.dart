// lib/widgets/upgrade_banner.dart
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';
import '../models/user_account.dart';

class UpgradeBanner extends StatelessWidget {
  final UserAccount userAccount;

  const UpgradeBanner({Key? key, required this.userAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle upgrade action
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(12),
        ),
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
                  const Text(
                    'Upgrade your account!',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Upgrade your account to get full access',
                    style: AppStyles.subheading,
                  ),
                  Text(
                    '${userAccount.currentTier} → ${userAccount.nextTier}',
                    style: AppStyles.smallText,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: AppColors.buttonBackground,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: AppColors.buttonText,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
