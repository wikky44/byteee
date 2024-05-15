
import 'package:flutter/material.dart';

import 'Providerr.dart';


class ProductListingPage extends StatefulWidget {
  @override
  _ProductListingPageState createState() => _ProductListingPageState();
}

class _ProductListingPageState extends State<ProductListingPage> {
  var Provider;
  var Consumer;

  @override
  void initState() {
    super.initState();
    Provider.of<ProductProvider>(context, listen: false).fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, _) {
          if (provider.products.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: provider.products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(provider.products[index].image),
                  title: Text(provider.products[index].title),
                  subtitle: Text('Price: \$${provider.products[index].price}'),
                  onTap: () {
                    // Add product to cart or navigate to product details page
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
