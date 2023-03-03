import 'package:delicious_meal/models/meal.dart';
import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeal;
  FavoritesScreen(this.favoritesMeal);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeal.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            "You have no favorites yet - start adding some!",
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritesMeal[index].id,
            title: favoritesMeal[index].title,
            imageUrl: favoritesMeal[index].imageUrl,
            duration: favoritesMeal[index].duration,
            complexity: favoritesMeal[index].complexity,
            affordability: favoritesMeal[index].affordability,
            // removeItem: _removeMeal,
          );
        },
        itemCount: favoritesMeal.length,
      );
    }
  }
}
