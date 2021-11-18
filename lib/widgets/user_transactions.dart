import '../models/transaction.dart';
import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _NewTransactionsState createState() => _NewTransactionsState();
}

class _NewTransactionsState extends State<UserTransactions> {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', amount: 45.33, date: DateTime.now(), title: 'New shoes'),
  ];

  void _addNewTransation(String title, double amount) {
    final newTx = Transaction(
        title: title,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransation),
        TransactionList(transactions),
      ],
    );
  }
}
