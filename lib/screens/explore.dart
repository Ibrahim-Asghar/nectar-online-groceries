import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar_online_groceries/screens/bakery_screen.dart';
import 'package:nectar_online_groceries/screens/beverages_screen.dart';
import 'package:nectar_online_groceries/screens/cooking_oil_screen.dart';
import 'package:nectar_online_groceries/screens/egg_dairy_screen.dart';
import 'package:nectar_online_groceries/screens/filter.dart';
import 'package:nectar_online_groceries/screens/footer.dart';
import 'package:nectar_online_groceries/screens/fruits_vegetables_screen.dart';
import 'package:nectar_online_groceries/screens/meat_fish_screen.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 13,
              ),
              Text(
                'Find Products',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFF2F3F2),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Store',
                            border: InputBorder.none,
                            icon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterPage()),
                          );
                        },
                        icon: Icon(Icons.tune),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FruitsVegetablesScreen()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[50],
                              border: Border(
                                bottom: BorderSide(color: Colors.blueAccent),
                                left: BorderSide(color: Colors.blueAccent),
                                right: BorderSide(color: Colors.blueAccent),
                                top: BorderSide(color: Colors.blueAccent),
                              ),
                            ),
                            height: 200,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/fresh.jpg'),
                                    alignment: Alignment.center,
                                    height: 150,
                                    width: 100,
                                  ),
                                ),
                                Text(
                                  'Frash Fruits\n& Vegetable',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OilGhee()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink[100],
                            border: Border(
                              bottom: BorderSide(color: Colors.pink),
                              left: BorderSide(color: Colors.pink),
                              right: BorderSide(color: Colors.pink),
                              top: BorderSide(color: Colors.pink),
                            ),
                          ),
                          height: 200,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Image(
                                  image: AssetImage('assets/images/oil.jpg'),
                                  alignment: Alignment.center,
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                              Text(
                                'Cooking Oil\n   & Ghee',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MeatFishScreen()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.pink[100],
                              border: Border(
                                bottom: BorderSide(color: Colors.pink),
                                left: BorderSide(color: Colors.pink),
                                right: BorderSide(color: Colors.pink),
                                top: BorderSide(color: Colors.pink),
                              ),
                            ),
                            height: 200,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/meets.jpg'),
                                    alignment: Alignment.center,
                                    height: 150,
                                    width: 100,
                                  ),
                                ),
                                Text(
                                  'Meat & Fish',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bakery()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[50],
                            border: Border(
                              bottom: BorderSide(color: Colors.blueAccent),
                              left: BorderSide(color: Colors.blueAccent),
                              right: BorderSide(color: Colors.blueAccent),
                              top: BorderSide(color: Colors.blueAccent),
                            ),
                          ),
                          height: 200,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Image(
                                  image: AssetImage('assets/images/bakery.jpg'),
                                  alignment: Alignment.center,
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                              Text(
                                'Bakery & Snacks',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DairyEgg()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[50],
                              border: Border(
                                bottom: BorderSide(color: Colors.blueAccent),
                                left: BorderSide(color: Colors.blueAccent),
                                right: BorderSide(color: Colors.blueAccent),
                                top: BorderSide(color: Colors.blueAccent),
                              ),
                            ),
                            height: 200,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/dairy.jpg'),
                                    alignment: Alignment.center,
                                    height: 150,
                                    width: 100,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Dairy & Eggs',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Beverages()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink[100],
                            border: Border(
                              bottom: BorderSide(color: Colors.pink),
                              left: BorderSide(color: Colors.pink),
                              right: BorderSide(color: Colors.pink),
                              top: BorderSide(color: Colors.pink),
                            ),
                          ),
                          height: 200,
                          width: 150,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Image(
                                  image:
                                      AssetImage('assets/images/beverages.jpg'),
                                  alignment: Alignment.center,
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Beverages',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomFooter(),
    );
  }
}
