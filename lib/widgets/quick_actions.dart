// lib/widgets/quick_actions.dart
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Quick actions', style: AppStyles.subheading),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _QuickActionItem(
              icon: Icons.phone,
              label: 'Airtime',
              onTap: () {
                // Handle airtime action
              },
            ),
            _QuickActionItem(
              icon: Icons.swap_vert_rounded,
              label: 'Data',
              onTap: () {
                // Handle data action
              },
            ),
            _QuickActionItem(
              icon: Icons.flash_on,
              label: 'Electricity',
              onTap: () {
                // Handle electricity action
              },
            ),
            _QuickActionItem(
              icon: Icons.more_horiz,
              label: 'More',
              onTap: () {
                // Handle more action
              },
            ),
          ],
        ),
      ],
    );
  }
}

class _QuickActionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _QuickActionItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: AppColors.primaryText, size: 24),
          ),
          const SizedBox(height: 8),
          Text(label, style: AppStyles.subheading),
        ],
      ),
    );
  }
}
