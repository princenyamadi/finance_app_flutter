import 'package:finance_app_flutter/models/transaction.dart';
import 'package:finance_app_flutter/widget/new_transaction.dart';
import 'package:finance_app_flutter/widget/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'r2',
      title: 'Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'r1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
