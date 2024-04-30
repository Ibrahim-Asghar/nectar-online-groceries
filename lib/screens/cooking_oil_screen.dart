import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/filter.dart';

class OilGhee extends StatefulWidget {
  const OilGhee({super.key});

  @override
  State<OilGhee> createState() => _OilGheeState();
}

class _OilGheeState extends State<OilGhee> {
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
                  "Cooking Oil & Ghee",
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

            Text('No Product ')
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 8,
            //     ),
            //     ProductCard(product: ProductList.products[0]),
            //     SizedBox(
            //       width: 8,
            //     ),
            //     ProductCard(product: ProductList.products[1]),
            //     SizedBox(
            //       width: 8,
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     SizedBox(
            //       width: 8,
            //     ),
            //     ProductCard(product: ProductList.products[2]),
            //     SizedBox(
            //       width: 8,
            //     ),
            //     ProductCard(product: ProductList.products[3]),
            //     SizedBox(
            //       width: 8,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
