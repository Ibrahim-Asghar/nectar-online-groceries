import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class FilteredProductsScreen extends StatelessWidget {
  final List<Product> filteredProducts;

  const FilteredProductsScreen({Key? key, required this.filteredProducts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtered Products'),
      ),
      body: ListView.builder(
        itemCount: filteredProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(filteredProducts[index].name),
            subtitle: Text(filteredProducts[index].category),
          );
        },
      ),
    );
  }
}
