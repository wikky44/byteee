import 'dart:convert';


import 'model/Product.dart';

class ProductService {
  get http => null;

  Future<List<Product>> fetchProducts() async {
    final response = await http.post(Uri.parse('https://my-store.in/v2/products/api/getProductsList'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final List<dynamic> productList = jsonData['list'];
      return productList.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
