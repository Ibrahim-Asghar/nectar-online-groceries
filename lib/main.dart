import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
      // home: HomePage(), 
      // home: Onbording(),
    );
  }
}
