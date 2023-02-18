import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionListTile extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;
  TransactionListTile(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 623,
      child: transactions.isEmpty
          ? Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "No transactions added yet!",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  // width: 200,
                  child: Image.asset('assets/images/NoData.png',
                      fit: BoxFit.cover),
                ),
              ],
            )
          : ListView.builder(
              // reverse: true, // new tx add top
              itemBuilder: (ctx, index) {
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
                            '\$${transactions[index].amount}',
                          ),
                        ),
                      ),
                    ),
                    title: new Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: new Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                      style: TextStyle(fontFamily: 'Quicksans'),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () =>
                          deleteTransaction(transactions[index].id),
                      color: Colors.red.shade700,
                    ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
