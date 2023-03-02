import 'package:flutter/material.dart';

class N01_CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  const N01_CategoryMealsScreen({required this.categoryId,required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(child: Text("New Page"),),
    );
  }
}
