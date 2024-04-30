import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar_online_groceries/screens/send_code.dart';
import 'package:nectar_online_groceries/screens/sing_in.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
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
                    MaterialPageRoute(builder: (context) => Signin()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              Center(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 38,
                        ),
                        Text(
                          'Enter your mobile number                ',
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
                          "Mobile Number                                                                      ",
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
                          width: 300,
                          height: 50,
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                userInput = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your text',
                              prefixIcon: Row(
                                children: [
                                  Image.asset('assets/images/flag.jpg'),
                                  SizedBox(width: 5),
                                  Text('+880'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SendCode()),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
