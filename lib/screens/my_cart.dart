import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/check_out_button.dart';
import 'package:nectar_online_groceries/screens/footer.dart';
import 'package:nectar_online_groceries/screens/product_details.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<int> _quantities = List.filled(ProductList.products.length, 1);

  void incrementQuantity(int index) {
    setState(() {
      _quantities[index]++;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      if (_quantities[index] > 1) {
        _quantities[index]--;
      }
    });
  }

  void removeProduct(int index) {
    setState(() {
      _quantities.removeAt(index);
    });
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < ProductList.products.length; i++) {
      totalPrice += ProductList.products[i].price * _quantities[i];
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'My Cart',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: ProductList.products.length,
              itemBuilder: (BuildContext context, int index) {
                final Product product = ProductList.products[index];
                return Column(
                  children: [
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    product.details,
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                icon: Image.asset(
                                  'assets/images/cross.jpg',
                                  width: 24,
                                  height: 24,
                                ),
                                onPressed: () {
                                  removeProduct(index);
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.remove),
                                      color: Colors.green[400],
                                      onPressed: () {
                                        decrementQuantity(index);
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${_quantities[index]}',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.add),
                                      color: Colors.green[400],
                                      onPressed: () {
                                        incrementQuantity(index);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$${product.price.toStringAsFixed(2)}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      leading: Image.asset(
                        product.image,
                        width: 70,
                        height: 70,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailsPage(product: product),
                          ),
                        );
                      },
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                  ],
                );
              },
            ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: CheckOutButton(
                totalPrice: calculateTotalPrice(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomFooter(),
    );
  }
}
