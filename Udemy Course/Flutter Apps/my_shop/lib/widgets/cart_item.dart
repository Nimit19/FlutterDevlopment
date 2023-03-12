// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String productId;
  final String title;
  final int quantity;
  final double price;

  const CartItem({
    super.key,
    required this.id,
    required this.productId,
    required this.title,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        color: Theme.of(context).colorScheme.primary,
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
      ),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("Are you sure?"),
            content: Text(
              "Do you want to remove the item from the cart?",
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop(false);
                },
                child: Text(
                  "No",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop(true);
                },
                child: Text(
                  "Yes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              maxRadius: 25,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: FittedBox(child: Text('₹$price')),
              ),
            ),
            title: Text(title),
            subtitle: Text('Total: ₹${(price * quantity).toStringAsFixed(2)}'),
            trailing: Text(
              '$quantity x',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}


// Container(
//               color: Colors.blue,
//               height: 30,
//               width: 75,
//               child: Row(
//                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.add),
//                     onPressed: () {},
//                   ),
//                   Container(
//                     width: 25,
//                     height: 30,
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.add),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),

