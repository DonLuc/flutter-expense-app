// ignore_for_file: deprecated_member_use

import './widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expense App"),
          actions: [
            IconButton(
              onPressed: () => null,
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Card(
                  color: Colors.blueGrey.shade400,
                  elevation: 5.0,
                  margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: const Text(
                    "Weeekly Chart",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              UserTransactions()
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => {},
        ),
      ),
    );
  }
}
