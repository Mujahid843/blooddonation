import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnboardScreen2 extends StatefulWidget {
  const OnboardScreen2({super.key});

  @override
  State<OnboardScreen2> createState() => _OnboardScreen2State();
}

class _OnboardScreen2State extends State<OnboardScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/Onboardt.png",
                  width: 230,
                  height: 130,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
              ),
              Container(
                alignment: Alignment.center,
                // ignore: prefer_const_constructors
                child: Text(
                  "Post A Blood Request",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
              ),
              Container(
                width: 200,
                alignment: Alignment.center,
                // ignore: prefer_const_constructors
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 8,
                        alignment: Alignment.center,
                        // ignore: prefer_const_constructors
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: const CircleBorder(
                            // ignore: prefer_const_constructors
                            side: BorderSide(
                              width: 3,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 5,
                        alignment: Alignment.center,
                      ),
                      Container(
                        width: 30,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(500.0),
                            // ignore: prefer_const_constructors
                            side: BorderSide(
                              width: 3,
                              color: const Color.fromARGB(255, 255, 33, 86),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                height: 80,
                alignment: Alignment.center,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/one');
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 110, 103, 103)),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 300,
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/one');
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 255, 33, 86),
                              ),
                            ),
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
