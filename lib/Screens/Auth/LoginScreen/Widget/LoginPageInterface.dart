// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageInterface extends StatefulWidget {
  const LoginPageInterface({super.key});

  @override
  State<LoginPageInterface> createState() => _LoginPageInterfaceState();
}

class _LoginPageInterfaceState extends State<LoginPageInterface> {
  final GlobalKey<FormState> _passkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // ignore: non_constant_identifier_names
  bool IsPassword(String ps) {
    String q = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

    RegExp regExp = new RegExp(q);

    return regExp.hasMatch(ps);
  }

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_circle_left_sharp, color: Colors.black),
            onPressed: () => Navigator.pushNamed(context, '/one'),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.white,
              child: Column(children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/Logo.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Dare ",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 255, 33, 86),
                          ),
                        ),
                        TextSpan(
                          text: "To ",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: "Donate",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 255, 33, 86),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 70,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 265,
                  child: Form(
                    key: _formkey,
                    child: TextFormField(
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pleae Enter the Email";
                        } else if (!isEmail(value)) {
                          return 'Enter a valid  email';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: "example@mail.com",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF272A2F),
                            fontStyle: FontStyle.italic),
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color.fromARGB(255, 235, 33, 86),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 265,
                  child: Form(
                    key: _passkey,
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pleae Enter Password";
                        } else if (!IsPassword(value)) {
                          return 'Enter a valid  Password';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: "**Password***",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF272A2F),
                            fontStyle: FontStyle.italic),
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_rounded,
                            color: Color.fromARGB(255, 255, 33, 86)),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 80,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate() &&
                          _passkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Processing")));
                        Navigator.pushNamed(context, '/custom');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 255, 33, 86),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: const Color.fromARGB(255, 255, 33, 86),
                      fixedSize: const Size(250, 35),
                    ),
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgo');
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 33, 86),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 300,
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Dont have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/reg1');
                            },
                            child: const Text(
                              'Register Now',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 255, 33, 86),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ]),
        ));
  }
}
