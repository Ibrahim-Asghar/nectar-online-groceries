import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/product_card.dart';
import 'package:nectar_online_groceries/screens/filter.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class FruitsVegetablesScreen extends StatefulWidget {
  const FruitsVegetablesScreen({super.key});

  @override
  State<FruitsVegetablesScreen> createState() => _FruitsVegetablesScreenState();
}

class _FruitsVegetablesScreenState extends State<FruitsVegetablesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
                Text(
                  "Fresh Fruits & Vegetable",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FilterPage()),
                    );
                  },
                  icon: Icon(Icons.tune),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                ProductCard(product: ProductList.products[0]),
                SizedBox(
                  width: 8,
                ),
                ProductCard(product: ProductList.products[1]),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                ProductCard(product: ProductList.products[2]),
                SizedBox(
                  width: 8,
                ),
                ProductCard(product: ProductList.products[3]),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
