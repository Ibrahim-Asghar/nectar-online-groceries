import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/custom_details_add.dart';
import 'package:nectar_online_groceries/screens/product_details.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Color(0XFFFFFFFF),
        shadowColor: Colors.amber,
        surfaceTintColor: Color(0XFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            color: Color(0xFFFFFFFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 150,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  product.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  product.details,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    CustomButton(
                      icon: Icons.add,
                      iconColor: Colors.white,
                      buttonColor: Color(0xFF00B36F),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailsPage(product: product),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
