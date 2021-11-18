import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                label: Text("Item name"),
              ),
              autocorrect: false,
              autofocus: true,
              controller: titleController,
            ),
            TextField(
              autocorrect: false,
              autofocus: true,
              decoration: const InputDecoration(
                label: Text("Item Price"),
              ),
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                addNewTransaction(
                    titleController.text, double.parse(amountController.text));
              },
              child: const Text("Add item"),
            )
          ],
        ),
      ),
    );
  }
}
