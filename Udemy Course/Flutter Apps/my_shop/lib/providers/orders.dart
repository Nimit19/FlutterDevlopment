import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_shop/providers/cart.dart';
import 'package:http/http.dart' as http;

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

  final String? authToken;
  final String? userId;
  Orders(this.authToken, this.userId, this._orderItems);

  List<OrderItem> get orders {
    return [..._orderItems];
  }

  Future<void> fetchAndSetOrders() async {
    final url = Uri.parse(
        'https://flutter-app-095-default-rtdb.firebaseio.com/orders/$userId.json?auth=$authToken');

    final response = await http.get(url);
    final List<OrderItem> loadedOrders = [];

    final extractedData = json.decode(response.body);

    if (extractedData == null) {
      return;
    }

    extractedData.forEach((orderId, orderData) {
      loadedOrders.add(OrderItem(
        id: orderId,
        amount: orderData['amount'],
        dateTime: DateTime.parse(orderData['dateTime']),
        products: (orderData['products'] as List<dynamic>)
            .map((item) => CartItem(
                  id: item['id'],
                  title: item['title'],
                  quantity: item['quantity'],
                  price: item['price'],
                ))
            .toList(),
      ));
    });
    _orderItems = loadedOrders.reversed.toList();
    notifyListeners();
  }

  Future<void> addOrderItem(
      List<CartItem> cartProducts, double totalPrice) async {
    final url = Uri.parse(
        'https://flutter-app-095-default-rtdb.firebaseio.com/orders/$userId.json?auth=$authToken  ');

    final timestamp = DateTime.now();

    final response = await http.post(
      url,
      body: json.encode({
        'amount': totalPrice,
        'dateTime': timestamp.toIso8601String(),
        'products': cartProducts
            .map((cp) => {
                  'id': cp.id,
                  'title': cp.title,
                  'price': cp.price,
                  'quantity': cp.quantity,
                })
            .toList(),
      }),
    );

    _orderItems.insert(
      0,
      OrderItem(
        id: json.decode(response.body)['name'],
        amount: totalPrice,
        products: cartProducts,
        dateTime: timestamp,
      ),
    );
    notifyListeners();
  }
}
