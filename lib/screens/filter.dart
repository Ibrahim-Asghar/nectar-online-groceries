import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/filtered_product_screen.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<String> selectedCategories = ['Eggs', 'Noodles & Pasta'];
  List<String> selectedBrands = ['Cocola'];

  bool isCategorySelected(String category) {
    return selectedCategories.contains(category);
  }

  bool isBrandSelected(String brand) {
    return selectedBrands.contains(brand);
  }

  List<Product> filteredProducts() {
    return ProductList.products.where((product) {
      return selectedCategories.contains(product.category) &&
          selectedBrands.contains(product.name);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Filters',
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0XFFF2F3F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ..._buildCategoryList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Brands',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ..._buildBrandList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          List<Product> filtered = filteredProducts();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  FilteredProductsScreen(filteredProducts: filtered),
            ),
          );
        },
        label: Text(
          '                       Apply Filter                       ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green[400],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  List<Widget> _buildCategoryList() {
    List<String> categories = [
      'Eggs',
      'Noodles & Pasta',
      'Chips & Crisps',
      'Fast Food'
    ];
    return categories.map((category) {
      return ListTile(
        title: Text(category),
        leading: Checkbox(
          activeColor: Colors.green[400],
          value: isCategorySelected(category),
          onChanged: (bool? value) {
            setState(() {
              if (value!) {
                selectedCategories.add(category);
              } else {
                selectedCategories.remove(category);
              }
            });
          },
        ),
      );
    }).toList();
  }

  List<Widget> _buildBrandList() {
    List<String> brands = [
      'Individual Collection',
      'Cocola',
      'Ifad',
      'Kazi Farmas'
    ];
    return brands.map((brand) {
      return ListTile(
        title: Text(brand),
        leading: Checkbox(
          activeColor: Colors.green[400],
          value: isBrandSelected(brand),
          onChanged: (bool? value) {
            setState(() {
              if (value!) {
                selectedBrands.add(brand);
              } else {
                selectedBrands.remove(brand);
              }
            });
          },
        ),
      );
    }).toList();
  }
}
