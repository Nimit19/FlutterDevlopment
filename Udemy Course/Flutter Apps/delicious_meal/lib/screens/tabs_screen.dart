import 'package:delicious_meal/screens/category_screen.dart';
import 'package:delicious_meal/screens/favorites_screen.dart';
import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});


  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

// class _TabsScreenState extends State<TabsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(length: 2, child: Scaffold(
//         appBar: AppBar(title: Text("Meals"),
//         bottom: TabBar(tabs: [
//           Tab(icon: Icon(Icons.category),child: Text("Categories"),),
//           Tab(icon: Icon(Icons.star),child: Text("Favorites"),)
//         ],),
//         ),
//         body: TabBarView(children: [
//           CategoryScreen(),
//           FavoritesScreen(),
//         ],)
//     ),
//     );
//   }
// }
class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoryScreen(),
      'title': "Categories",
    },
    {
      'page': FavoritesScreen(),
      'title': "Your Favorite",
    },
  ];

  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.pink,
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.pink,
            icon: Icon(Icons.star),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
