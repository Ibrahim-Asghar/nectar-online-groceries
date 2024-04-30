import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/products.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool isFavorite = false;
  bool showDetails = false;
  bool showNut = false;
  bool showRev = false;
  int review = 3;
  bool isLiked = false;
  QuantityController quantityController = QuantityController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  color: Color(0XFFF2F3F2),
                  width: 500,
                  height: 300,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.ios_share_outlined),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image(
                        image: AssetImage(widget.product.image),
                        alignment: Alignment.center,
                        fit: BoxFit.fill,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.product.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : null,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      widget.product.details,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantityController.decrement();
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Color(0XFF53B175),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border(
                              left: BorderSide(color: Color(0XFFE2E2E2)),
                              right: BorderSide(color: Color(0XFFE2E2E2)),
                              bottom: BorderSide(color: Color(0XFFE2E2E2)),
                              top: BorderSide(color: Color(0XFFE2E2E2)),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            quantityController.quantity.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantityController.increment();
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            color: Color(0XFF53B175),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      ' \$${widget.product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  '_____________________________________________',
                  style: TextStyle(color: Colors.grey),
                  selectionColor: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: showDetails
                          ? Icon(Icons.keyboard_arrow_down_sharp)
                          : Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        setState(() {
                          showDetails = !showDetails;
                        });
                      },
                    ),
                  ],
                ),
                if (showDetails)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.product.name} are nutritious.\n${widget.product.name} may be good for weight loss.\n${widget.product.name} may be good for your heart.\nAs part of a healtful \nand varied diet.',
                        style:
                            TextStyle(color: Color(0XFF7C7C7C), fontSize: 16),
                      ),
                    ],
                  ),
                Text(
                  '_____________________________________________',
                  style: TextStyle(color: Colors.grey),
                  selectionColor: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Nutritions',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 199, 199, 199),
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border(
                              left: BorderSide(color: Color(0XFFE2E2E2)),
                              right: BorderSide(color: Color(0XFFE2E2E2)),
                              bottom: BorderSide(color: Color(0XFFE2E2E2)),
                              top: BorderSide(color: Color(0XFFE2E2E2)),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '100gr',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        IconButton(
                          icon: showNut
                              ? Icon(Icons.keyboard_arrow_down_sharp)
                              : Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            setState(() {
                              showNut = !showNut;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  '_____________________________________________',
                  style: TextStyle(color: Colors.grey),
                  selectionColor: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Review',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                              5,
                              (index) => IconButton(
                                    icon: Icon(
                                      index < review
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: Color(0XFFF3603F),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        review = index + 1;
                                      });
                                    },
                                  )),
                        ),
                        IconButton(
                          icon: showRev
                              ? Icon(Icons.keyboard_arrow_down_sharp)
                              : Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            setState(() {
                              showRev = !showRev;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                    backgroundColor: Colors.green[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    ('Add To Basket'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuantityController {
  int quantity = 1;

  void increment() {
    quantity++;
  }

  void decrement() {
    if (quantity > 1) {
      quantity--;
    }
  }
}
