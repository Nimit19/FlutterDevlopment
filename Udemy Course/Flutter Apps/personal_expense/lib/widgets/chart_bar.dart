import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final num spendingAmount;
  final double spendingPerOfTotal;

  const ChartBar(this.label, this.spendingAmount, this.spendingPerOfTotal);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        children: [
          Container(
            height: constraints.maxHeight * 0.15,
            child: FittedBox(
                child: spendingAmount > 1000
                    ? Text("₹${(spendingAmount / 1000).toStringAsFixed(0)}k")
                    : Text("₹${spendingAmount.toStringAsFixed(0)}")),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            height: constraints.maxHeight * 0.60,
            width: 12,

            // Change By me
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                color: Color.fromRGBO(220, 220, 220, 50),
                borderRadius: BorderRadius.circular(20),
              ),
              child: FractionallySizedBox(
                heightFactor: spendingPerOfTotal,
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1),
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            height: constraints.maxHeight * 0.15,
            child: FittedBox(
              child: Text(
                label,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          )
        ],
      );
    });
  }
}
