class Dashboard {
  final User user;
  final List<Transaction> recentTransactions;
  final List<NotificationItem> notifications;

  Dashboard({
    required this.user,
    required this.recentTransactions,
    required this.notifications,
  });

  factory Dashboard.fromJson(Map<String, dynamic> json) {
    return Dashboard(
      user: User.fromJson(json['user']),
      recentTransactions: (json['recent_transactions'] as List)
          .map((e) => Transaction.fromJson(e))
          .toList(),
      notifications: (json['notifications'] as List)
          .map((e) => NotificationItem.fromJson(e))
          .toList(),
    );
  }
}

class User {
  final int id;
  final String name;
  final String email;
  final double balance;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.balance,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      balance: json['balance'].toDouble(),
    );
  }
}

class Transaction {
  final int id;
  final String date;
  final String description;
  final double amount;

  Transaction({
    required this.id,
    required this.date,
    required this.description,
    required this.amount,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      date: json['date'],
      description: json['description'],
      amount: json['amount'].toDouble(),
    );
  }
}

class NotificationItem {
  final int id;
  final String title;
  final String message;

  NotificationItem({
    required this.id,
    required this.title,
    required this.message,
  });

  factory NotificationItem.fromJson(Map<String, dynamic> json) {
    return NotificationItem(
      id: json['id'],
      title: json['title'],
      message: json['message'],
    );
  }
}
