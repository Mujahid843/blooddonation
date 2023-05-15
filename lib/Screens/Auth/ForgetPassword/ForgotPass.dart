import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
            onPressed: () => Navigator.pushNamed(context, '/two'),
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
                Container(
                  alignment: Alignment.center,
                  width: 265,
                  child: Form(
                    key: _formkey,
                    child: TextFormField(
                      autofocus: true,
                      textInputAction: TextInputAction.done,
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
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 265,
                  child: const Text(
                    "Your password reset will be send in your registered email address.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                "Enter the code you recived in your register Mail")));
                        Navigator.pushNamed(context, '/verify');
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
                      'Send',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
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
