import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/cart.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:shop/widgets/app_drawer.dart';
import 'package:shop/widgets/badge.dart';
import 'package:shop/widgets/product_grid.dart';

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  
  bool _showFavoriteOnly = false;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha loja'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (int selectedValue) {
             setState(() {
                if(selectedValue == 0) {
                _showFavoriteOnly = true;
              } else {
                _showFavoriteOnly = false;
              }
             });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
            PopupMenuItem(
              child: Text('Somente Favoritos'), value: 0,
              ),
            PopupMenuItem(
              child: Text('Todos'), value: 1,
              ),  
              ],
              ),
           
             Consumer<Cart>(
              child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.CART);
              },
              ),
              builder: (_, cart, child) => Badge(
              value: cart.itemsCount.toString(),
              child: child,
              ),
          ),
        ],
      ),
      body: ProductGrid(_showFavoriteOnly), 
      drawer: AppDrawer(),
    );
  }
}

