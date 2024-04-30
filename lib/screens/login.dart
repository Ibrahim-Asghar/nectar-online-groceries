import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/custom_widget/custom_elevated_button.dart';
import 'package:nectar_online_groceries/screens/home_screen.dart';
import 'package:nectar_online_groceries/screens/sign_up.dart';

import 'send_code.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/blur.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Image.asset('assets/images/logo (2).png'),
                Center(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Loging                                                        ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Enter your emails and password                                 ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Email                                                                              ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
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
                          hintText: 'Enter Your Email ',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Password                                                                    ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                            cursorColor: Colors.black,
                            obscureText: _obscureText,
                            onChanged: (value) {
                              setState(() {
                                userInput = value;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Your Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '                                                                Forgot Password?',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    CustomElevatedButton(
                      text: 'Log In',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            child: Text(
                              'Sign up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.green[400],
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 102,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
