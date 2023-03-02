import 'package:delicious_meal/dummy_data.dart';
import 'package:delicious_meal/screens/filters_Screen.dart';
import 'package:flutter/material.dart';

import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';
import 'models/meal.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegetarian': false,
    'vegan': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where(
        (meal) {
          if (_filters['gluten']! && !meal.isGlutenFree) {
            return false;
          }

          if (_filters['lactose']! && !meal.isLactoseFree) {
            return false;
          }

          if (_filters['vegetarian']! && !meal.isVegetarian) {
            return false;
          }

          if (_filters['vegan']! && !meal.isVegan) {
            return false;
          }
          return true;
        },
      ).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delicious Meal',
      theme: ThemeData(
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Itim',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyMedium: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              titleMedium: const TextStyle(
                fontSize: 28,
                fontFamily: 'Itim',
                fontWeight: FontWeight.bold,
              )),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber)),
      // home: const CategoryScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const TabsScreen(),

        // // 1]
        // '/category-meals': (ctx) => CategoryMealsScreen(),

        // 2]
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(availableMeals: _availableMeals),

        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),

        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters,_setFilters),
      },
      // onGenerateRoute: (settings){
      //   return MaterialPageRoute(builder: (ctx) => CategoryScreen());
      // },

      // onUnknownRoute: (settings){
      //   return MaterialPageRoute(builder: (ctx) => CategoryScreen());
      // },
    );
  }
}
