import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {

  const TransactionItem({
    super.key,
    required this.transaction,
    required this.deleteTransaction,
  });

  final Transaction transaction;
  final Function deleteTransaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.purple.shade100,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: FittedBox(
              child: Text(
                '₹${transaction.amount}',
              ),
            ),
          ),
        ),
        title: Text(
          transaction.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(transaction.date),
          style: const TextStyle(fontFamily: 'Quicksans'),
        ),
        trailing: MediaQuery.of(context).size.width > 460
            ? TextButton.icon(
          onPressed: () =>
              deleteTransaction(transaction.id),
          icon: const Icon(Icons.delete),
          label: const Text("Delete"),
          style: TextButton.styleFrom(
            primary: Colors.red.shade900,
          ),
        )
            : IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () =>
              deleteTransaction(transaction.id),
          color: Colors.red.shade900,
        ),
      ),
    );
  }
}