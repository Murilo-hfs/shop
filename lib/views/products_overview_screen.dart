import 'package:flutter/material.dart';
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
        ],
      ),
      body: ProductGrid(_showFavoriteOnly), 
    );
  }
}

