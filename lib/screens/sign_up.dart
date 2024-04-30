import 'package:flutter/material.dart';
import 'package:nectar_online_groceries/screens/login.dart';

import '../custom_widget/custom_elevated_button.dart';
import 'send_code.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  bool _isEmailValid = false;
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
              children: [
                SizedBox(
                  height: 70,
                ),
                Image.asset('assets/images/logo (2).png'),
                Center(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign Up                                                        ',
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
                  'Enter your credentials to continue                                 ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Username                                                                     ',
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
                          hintText: 'Enter Your Username ',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                            onChanged: (value) {
                              setState(() {
                                _isEmailValid = value.isNotEmpty;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Your Email',
                              suffixIcon: _isEmailValid
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.green[400],
                                    )
                                  : null,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
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
                                cursorErrorColor: Colors.black,
                                obscureText: _obscureText,
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
                                  hintText: 'Enter Your Password ',
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
                        Row(
                          children: [
                            Text(
                              '        By continuing you agree to our',
                              textAlign: TextAlign.start,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Terms of Service ',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.green[400],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '          and',
                              textAlign: TextAlign.start,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Privacy Policy.',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.green[400],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomElevatedButton(
                          text: 'Sign Up',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
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
                              'Already have an account?',
                              textAlign: TextAlign.center,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                },
                                child: Text(
                                  'Log In',
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
