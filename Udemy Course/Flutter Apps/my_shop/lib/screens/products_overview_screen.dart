import 'package:flutter/material.dart';
import 'package:my_shop/screens/cart_screen.dart';
import 'package:my_shop/widgets/app_drawer.dart';
import 'package:provider/provider.dart';

// import '../providers/cart.dart';
import '../providers/cart.dart';
import '../widgets/product_grid.dart';
import 'package:badges/badges.dart' as badge;

enum FilterOptions {
  // ignore: constant_identifier_names
  Favorites,
  // ignore: constant_identifier_names
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  const ProductOverviewScreen({super.key});

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyShop"),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  // productsContainer.showFavoritesOnly();
                  _showOnlyFavorites = true;
                } else {
                  // productsContainer.showAll();
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.Favorites,
                child: Text(
                  'Only Favorites',
                ),
              ),
              const PopupMenuItem(
                value: FilterOptions.All,
                child: Text(
                  "Show All",
                ),
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => badge.Badge(
                position: badge.BadgePosition.topEnd(top: 0, end: 3),
                badgeColor: Colors.amber,
                showBadge: true,
                badgeContent: Text(cart.itemCount.toString()),
                child: ch),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: AppDrawer(),
      body: ProductsGrid(showFavs: _showOnlyFavorites),
    );
  }
}
