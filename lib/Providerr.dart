import 'package:flutter/material.dart';
import 'Api_service.dart';
import 'model/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;

  void fetchProducts() async {
    final productService = ProductService();
    _products = (await productService.fetchProducts()).cast<Product>();
    notifyListeners();
  }
}
