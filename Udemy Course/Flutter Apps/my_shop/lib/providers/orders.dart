import 'package:flutter/material.dart';
import 'package:my_shop/providers/cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    required this.id,
    required this.amount,
    required this.products,
    required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _orderItems = [];

  List<OrderItem> get orders {
    return [..._orderItems];
  }

  void addOrderItem(List<CartItem> cartProducts, double totalPrice) {
    _orderItems.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        amount: totalPrice,
        products: cartProducts,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
