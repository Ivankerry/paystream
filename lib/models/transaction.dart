// lib/models/transaction.dart
class Transaction {
  final String id;
  final String recipientName;
  final double amount;
  final DateTime date;
  final TransactionType type;

  Transaction({
    required this.id,
    required this.recipientName,
    required this.amount,
    required this.date,
    required this.type,
  });

  String get formattedAmount {
    final prefix = type == TransactionType.sent ? '-' : '+';
    return '$prefix\$ ${amount.toStringAsFixed(2)}';
  }

  String get formattedDate {
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return '${date.day} ${months[date.month - 1]} ${date.year} at ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')} ${date.hour >= 12 ? 'pm' : 'am'}';
  }
}

enum TransactionType { sent, received }
