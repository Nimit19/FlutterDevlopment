import 'package:flutter/src/material/card.dart';

class Transaction {
  final String id;
  final String title;
  final num amount;
  final DateTime date;

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date});

  static map(Card Function(dynamic tx) param0) {}
}
