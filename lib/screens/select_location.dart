import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/custom_elevated_button.dart';
import 'package:nectar_online_groceries/screens/login.dart';
import 'package:nectar_online_groceries/screens/number.dart';

import 'send_code.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/blur.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Number()),
                    );
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Center(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 38,
                          ),
                          Image.asset('assets/images/map.jpg'),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Select Your Location',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Switch on your location to stay in tune with\ what’s happening in your area',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            'Your zone                                                                                    ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            height: 30,
                            width: 300,
                            child: TextField(
                              cursorColor: Colors.black,
                              cursorErrorColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  userInput = value;
                                });
                              },
                              decoration: InputDecoration(
                                hoverColor: Colors.black,
                                fillColor: Colors.black,
                                focusColor: Colors.black,
                                iconColor: Colors.black,
                                hintText: 'Types of your zone',
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            'Your Area                                                                                    ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            height: 30,
                            width: 300,
                            child: TextField(
                              cursorColor: Colors.black,
                              cursorErrorColor: Colors.black,
                              onChanged: (value) {
                                setState(() {
                                  userInput = value;
                                });
                              },
                              decoration: InputDecoration(
                                hoverColor: Colors.black,
                                fillColor: Colors.black,
                                focusColor: Colors.black,
                                iconColor: Colors.black,
                                hintText: 'Types of your area',
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                      CustomElevatedButton(
                        text: 'Submit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 77,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
