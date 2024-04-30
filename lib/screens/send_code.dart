import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar_online_groceries/screens/number.dart';
import 'package:nectar_online_groceries/screens/select_location.dart';

class SendCode extends StatefulWidget {
  const SendCode({super.key});

  @override
  State<SendCode> createState() => _SendCodeState();
}

String userInput = '';

class _SendCodeState extends State<SendCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    SingleChildScrollView(),
                    Column(
                      children: [
                        SingleChildScrollView(),
                        SizedBox(
                          height: 38,
                        ),
                        Text(
                          'Enter your 4-digit code                    ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Code                                                                                       ",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
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
                              hintText: ' - - - - ',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.green[400],
                        ),
                      )),
                  SizedBox(
                    width: 180,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectLocation()),
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                    label: Text(''),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green[400],
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(17.0),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
