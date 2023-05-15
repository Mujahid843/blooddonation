import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_circle_left_sharp, color: Colors.black),
            onPressed: () => Navigator.pushNamed(context, '/forgo'),
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
                  height: 130,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 45,
                      height: 45,
                      child: Form(
                        child: TextFormField(
                          autofocus: true,
                          textAlign: TextAlign.center,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "6",
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF272A2F),
                            ),
                            fillColor: Color(0xFFF8F8F8),
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 45,
                      height: 45,
                      child: Form(
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "8",
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF272A2F),
                            ),
                            fillColor: Color(0xFFF8F8F8),
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 45,
                      height: 45,
                      child: Form(
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: "|",
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 33, 86),
                            ),
                            fillColor: Color(0xFFF8F8F8),
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 45,
                      height: 45,
                      child: Form(
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            fillColor: Color(0xFFF8F8F8),
                            filled: true,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        alignment: Alignment.center,
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/reg1');
                          },
                          child: const Text(
                            'Resend Code 49 Sec',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 33, 86),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Processing")));
                      Navigator.pushNamed(context, '/fin');
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
                      'Verify',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ));
  }
}
