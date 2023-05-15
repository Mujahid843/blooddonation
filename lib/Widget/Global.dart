// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Custombutton(
  String texts,
  String image,
) {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.grey,
        elevation: 5,
        side: const BorderSide(
          width: 0.4,
          color: Color(0xFFE5E5E5),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: Colors.white,
        fixedSize: const Size(210, 30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(height: 8),
          Text(
            texts,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              color: Color(0xFF7E7E7E),
            ),
          )
        ],
      ));
}

Widget Customdonation(String donorname, String donorlocation,
    String requesttime, String bloodgroup) {
  return Container(
    width: 280,
    height: 135,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ], color: Colors.white, borderRadius: BorderRadius.circular(9)),
    child: Row(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  left: 9,
                ),
                child: Text(
                  "Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 3,
                  left: 9,
                ),
                child: Text(
                  donorname,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  left: 9,
                ),
                child: Text(
                  "Location",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 5,
                  left: 9,
                ),
                child: Text(
                  donorlocation,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 21,
                  left: 9,
                ),
                child: Text(requesttime),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 80),
                child: Image.asset(
                  bloodgroup,
                  width: 40,
                  height: 90,
                ),
              ),
              Container(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 70,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Donate',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF2156),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
