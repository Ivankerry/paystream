// lib/widgets/balance_card.dart
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';
import '../models/user_account.dart';

class BalanceCard extends StatefulWidget {
  final UserAccount userAccount;

  const BalanceCard({Key? key, required this.userAccount}) : super(key: key);

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  bool _showFullAccountNumber = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.credit_card,
                color: AppColors.secondaryText,
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(
                _showFullAccountNumber
                    ? widget.userAccount.accountNumber
                    : widget.userAccount.maskedAccountNumber,
                style: AppStyles.subheading,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.secondaryText,
                ),
                onPressed: () {
                  setState(() {
                    _showFullAccountNumber = !_showFullAccountNumber;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Text('Available balance', style: AppStyles.subheading),
              SizedBox(width: 8),
              Icon(
                Icons.visibility_off,
                color: AppColors.secondaryText,
                size: 16,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                widget.userAccount.formattedBalance,
                style: AppStyles.balanceAmount,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.buttonBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Fund',
                  style: TextStyle(
                    color: AppColors.buttonText,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(
                Icons.schedule,
                color: AppColors.secondaryText,
                size: 12,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  'Last transaction: ${widget.userAccount.lastTransaction}',
                  style: AppStyles.smallText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
