import 'package:flutter/material.dart';
import 'package:my_shop/widgets/app_drawer.dart';
import 'package:my_shop/widgets/user_product_item.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import 'edit_product_screen.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = 'user-products';
  const UserProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Products"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(EditProductScreen.routeName);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (ctx, i) => Column(
            children: [
              UserProductItem(
                productData.items[i].title,
                productData.items[i].imageUrl,
              ),
              const Divider(),
            ],
          ),
          itemCount: productData.items.length,
        ),
      ),
    );
  }
}
