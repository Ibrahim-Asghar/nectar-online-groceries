import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/product_card.dart';
import 'package:nectar_online_groceries/screens/filter.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class Bakery extends StatefulWidget {
  const Bakery({super.key});

  @override
  State<Bakery> createState() => _BakeryState();
}

class _BakeryState extends State<Bakery> {
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
                  "Bakery & Snacks",
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
                ProductCard(product: ProductList.products[14]),
                SizedBox(
                  width: 8,
                ),
                ProductCard(product: ProductList.products[15]),
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
                ProductCard(product: ProductList.products[16]),
                SizedBox(
                  width: 8,
                ),
                ProductCard(product: ProductList.products[17]),
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
