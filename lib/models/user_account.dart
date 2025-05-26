// lib/models/user_account.dart
class UserAccount {
  final String name;
  final String greeting;
  final String accountNumber;
  final double balance;
  final String lastTransaction;
  final String currentTier;
  final String nextTier;

  UserAccount({
    required this.name,
    required this.greeting,
    required this.accountNumber,
    required this.balance,
    required this.lastTransaction,
    required this.currentTier,
    required this.nextTier,
  });

  String get formattedBalance {
    return '\$ ${balance.toStringAsFixed(2)}';
  }

  String get maskedAccountNumber {
    // Example: mask all but first 4 and last 2 digits
    if (accountNumber.length < 6) return accountNumber;
    final start = accountNumber.substring(0, 4);
    final end = accountNumber.substring(accountNumber.length - 2);
    return '$start **** **** *** $end';
  }
}
