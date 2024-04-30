import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/order_screen.dart';

import 'products.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
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
    setState(() {});
    double totalPrice = 0;
    for (int i = 0; i < ProductList.products.length; i++) {
      totalPrice += ProductList.products[i].price * _quantities[i];
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
        color: Color(0XFFF2F3F2),
        child: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    title: Row(
                      children: [
                        Text(
                          'Checkout',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                    height: 15.0,
                  ),
                ],
              ),
              buildListItem("Delivery", "Select Method"),
              buildListItem("Payment", Image.asset('assets/images/card.jpg')),
              buildListItem("Promo Code", "Pick discount"),
              buildListItem("Total Cost",
                  "\$${calculateTotalPrice().toStringAsFixed(2)}"),
              buildTermsAndConditions(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderAccepted()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 70.0),
                    backgroundColor: Colors.green[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Place Order',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListItem(String title, dynamic trailingWidget) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          title: Row(
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          onTap: () {},
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (trailingWidget is String)
                Text(
                  trailingWidget,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              if (trailingWidget is Widget) trailingWidget,
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
          height: 15.0,
        ),
      ],
    );
  }

  Widget buildTermsAndConditions() {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'By placing an order you agree to our ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Text(
                        ' and ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Conditions',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
          height: 15.0,
        ),
      ],
    );
  }
}
