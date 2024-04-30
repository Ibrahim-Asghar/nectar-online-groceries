import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/scoial_media_button.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -350,
            top: -120,
            child: Transform.rotate(
              angle: 180,
              child: Image.asset(
                'assets/images/signin.jpg',
                width: 900,
                height: 400,
              ),
            ),
          ),
          Positioned(
              right: 2, child: Image.asset("assets/images/logo (1).png")),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: SocialMediaButtons(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
