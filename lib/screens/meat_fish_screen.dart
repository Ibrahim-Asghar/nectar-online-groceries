import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/product_card.dart';
import 'package:nectar_online_groceries/screens/filter.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class MeatFishScreen extends StatefulWidget {
  const MeatFishScreen({super.key});

  @override
  State<MeatFishScreen> createState() => _MeatFishScreenState();
}

class _MeatFishScreenState extends State<MeatFishScreen> {
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
                  "Meat & Fish",
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
                ProductCard(product: ProductList.products[4]),
                SizedBox(
                  width: 8,
                ),
                ProductCard(product: ProductList.products[5]),
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
