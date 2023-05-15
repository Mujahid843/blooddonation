import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _passkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _bloodkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _mobkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _namekey = GlobalKey<FormState>();

  bool IsMob(String ps) {
    String q = r'^((\+92)?(0092)?(92)?(0)?)(3)([0-9]{9})$';
    RegExp regExp = new RegExp(q);
    return regExp.hasMatch(ps);
  }

  bool IsBlood(String ps) {
    String q = r'^(A|B|AB|O)[-+]$';
    RegExp regExp = new RegExp(q);

    return regExp.hasMatch(ps);
  }

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
                  height: 20,
                ),
                Container(
                    alignment: Alignment.center,
                    width: 280,
                    child: Form(
                      key: _namekey,
                      child: TextFormField(
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name Field Could Not be Empty";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Mujahid Ali",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF272A2F),
                              fontStyle: FontStyle.normal),
                          fillColor: Color(0xFFF8F8F8),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.person_rounded,
                            color: Color.fromARGB(255, 235, 33, 86),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                Container(
                  alignment: Alignment.center,
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 280,
                  child: Form(
                    key: _formkey,
                    child: TextFormField(
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
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Mujahidali0843@mail.com",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF272A2F),
                            fontStyle: FontStyle.normal),
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
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
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 280,
                  child: Form(
                    key: _passkey,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
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
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "*************",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF272A2F),
                            fontStyle: FontStyle.italic),
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                        prefixIcon: Icon(Icons.lock_rounded,
                            color: Color.fromARGB(255, 255, 33, 86)),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 280,
                  child: Form(
                    key: _mobkey,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pleae Enter Cell No";
                        } else if (!IsMob(value)) {
                          return 'Enter a valid  Cell No as Per Given Format';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "+923027742378",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF272A2F),
                            fontStyle: FontStyle.italic),
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                        prefixIcon: Icon(Icons.phone,
                            color: Color.fromARGB(255, 255, 33, 86)),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 280,
                  child: Form(
                    key: _bloodkey,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pleae Enter Blood Group";
                        } else if (!IsBlood(value)) {
                          return 'Enter a valid  BloodGroup';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "AB+",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF272A2F),
                            fontStyle: FontStyle.normal),
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                        prefixIcon: Icon(Icons.bloodtype_sharp,
                            color: Color.fromARGB(255, 255, 33, 86)),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 280,
                  child: TextFormField(
                    autofocus: true,
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Islamabad,I-8 Markaz",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF272A2F),
                          fontStyle: FontStyle.normal),
                      fillColor: Color(0xFFF8F8F8),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 235, 33, 86),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_namekey.currentState!.validate() &&
                          _formkey.currentState!.validate() &&
                          _passkey.currentState!.validate() &&
                          _mobkey.currentState!.validate() &&
                          _bloodkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Processing your information")));
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
                      'REGISTER',
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
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 300,
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/two');
                            },
                            child: const Text(
                              'Log In',
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
