// lib/screens/banking_screen.dart
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../models/user_account.dart';
import '../models/transaction.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/balance_card.dart';
import '../widgets/action_buttons.dart';
import '../widgets/quick_actions.dart';
import '../widgets/upgrade_banner.dart';
import '../widgets/transaction_list.dart';
import '../widgets/bottom_navigation.dart';

class BankingScreen extends StatefulWidget {
  const BankingScreen({Key? key}) : super(key: key);

  @override
  State<BankingScreen> createState() => _BankingScreenState();
}

class _BankingScreenState extends State<BankingScreen> {
  int _currentNavIndex = 0;

  final UserAccount _userAccount = UserAccount(
    name: 'Kerry Mukoya',
    greeting: 'Good morning',
    accountNumber: '0050313889',
    balance: 75700.47,
    lastTransaction: '\$ 45,000 to  Swapesa Limited and Co.',
    currentTier: 'Tier 2',
    nextTier: 'Tier 3',
  );

  final List<Transaction> _recentTransactions = [
    Transaction(
      id: '1',
      recipientName: 'Swapesa Limited and Co.',
      amount: 45000.00,
      date: DateTime(2025, 5, 1, 13, 30),
      type: TransactionType.sent,
    ),
    Transaction(
      id: '2',
      recipientName: 'Kerry Limited and Co.',
      amount: 43000.00,
      date: DateTime(2025, 5, 1, 13, 30),
      type: TransactionType.sent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(userAccount: _userAccount),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BalanceCard(userAccount: _userAccount),
                      const SizedBox(height: 20),
                      const ActionButtons(),
                      const SizedBox(height: 24),
                      const QuickActions(),
                      const SizedBox(height: 24),
                      UpgradeBanner(userAccount: _userAccount),
                      const SizedBox(height: 24),
                      TransactionList(transactions: _recentTransactions),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            CustomBottomNavigation(
              currentIndex: _currentNavIndex,
              onTap: (index) {
                setState(() {
                  _currentNavIndex = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
