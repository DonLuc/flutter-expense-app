import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  submitTransaction() {
    final title = titleController.text;
    final amount = double.parse(amountController.text);

    if (title.isEmpty || amount.isNegative) {
      return;
    }

    addNewTransaction(title, amount);
  }

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
              onSubmitted: (_) => submitTransaction(),
            ),
            TextField(
              autocorrect: false,
              autofocus: true,
              decoration: const InputDecoration(
                label: Text("Item Price"),
              ),
              onSubmitted: (_) => submitTransaction(),
              keyboardType: TextInputType.number,
              controller: amountController,
            ),
            FlatButton(
              onPressed: submitTransaction,
              child: const Text("Add item"),
            )
          ],
        ),
      ),
    );
  }
}
