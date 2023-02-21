import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transaction_item.dart';

class TransactionListTile extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;
  TransactionListTile(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      child: transactions.isEmpty
          ? LayoutBuilder(builder: (ctx, constraits) {
              return Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "No transactions added yet!",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Container(
                    height: constraits.maxHeight * 0.70,
                    child: Image.asset('assets/images/NoData.png',
                        fit: BoxFit.cover),
                  ),
                ],
              );
            })
          : ListView.builder(
              // reverse: true, // new tx add top
              itemBuilder: (ctx, index) {
                return TransactionItem(transaction: transactions[index], deleteTransaction: deleteTransaction);
              },
              itemCount: transactions.length,
            ),
    );
  }
}


