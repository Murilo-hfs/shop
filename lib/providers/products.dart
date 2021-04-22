import 'package:flutter/cupertino.dart';
import 'package:shop/data/dummy_products.dart';
import 'package:shop/providers/product.dart';

class Products with ChangeNotifier{

  List<Product> _items = DUMMY_PRODUCTS;

  List<Product> get items => [... _items];

  List<Product> get favoriteItems {
    return _items.where((prod) => prod.isFavorite).toList();
  } 
  
  int get itemsCount {
    return _items.length;
  }
   
  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}