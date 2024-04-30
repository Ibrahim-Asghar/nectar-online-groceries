import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/product_card.dart';
import 'package:nectar_online_groceries/screens/filter.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    "Beverages",
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
                  ProductCard(product: ProductList.products[6]),
                  SizedBox(
                    width: 8,
                  ),
                  ProductCard(product: ProductList.products[7]),
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
                  ProductCard(product: ProductList.products[8]),
                  SizedBox(
                    width: 8,
                  ),
                  ProductCard(product: ProductList.products[9]),
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
                  ProductCard(product: ProductList.products[10]),
                  SizedBox(
                    width: 8,
                  ),
                  ProductCard(product: ProductList.products[11]),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
