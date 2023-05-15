import 'dart:ui';

import 'package:flutter/material.dart'
    show
        Alignment,
        BuildContext,
        Center,
        Colors,
        Column,
        Container,
        ElevatedButton,
        Image,
        MainAxisAlignment,
        MediaQuery,
        Navigator,
        Row,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        State,
        StatefulWidget,
        Text,
        Widget;
import 'package:flutter/src/widgets/basic.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  // ignore: prefer_const_constructors
                  text: TextSpan(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const TextSpan(
                        text: "Dare ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 33, 86),
                        ),
                      ),
                      const TextSpan(
                        text: "To ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      const TextSpan(
                        text: "Donate",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 33, 86),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                child: const Text(
                  "You can donate for ones in need and request blood if you need ",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/two');
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(255, 255, 33, 86),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white,
                    fixedSize: const Size(250, 35),
                  ),
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 33, 86)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/reg');
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
                    'REGISTER',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
