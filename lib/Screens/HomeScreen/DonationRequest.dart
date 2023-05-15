import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Widget/Global.dart';

class DonationRequest extends StatefulWidget {
  const DonationRequest({super.key});

  @override
  State<DonationRequest> createState() => _DonationRequestState();
}

class _DonationRequestState extends State<DonationRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 30,
                          height: 32,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(3)),
                          child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {},
                            icon:
                                Icon(Icons.arrow_back_ios, color: Colors.black),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 65, left: 40),
                        child: Container(
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Text(
                            "Donation Request",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Customdonation("Amir Hamza", "Hertford  Hospital",
                      "5 Min Ago", "assets/images/bloodgroup.png"),
                  SizedBox(
                    height: 25,
                  ),
                  Customdonation("Abdul Qader", "Apollo Hospital", "16 Min Ago",
                      "assets/images/bloodgroup.png"),
                  SizedBox(
                    height: 25,
                  ),
                  Customdonation("Irfan Hasan", "Square Hospital", "45 Min Ago",
                      "assets/images/bloodgroup.png"),
                  SizedBox(
                    height: 25,
                  ),
                  Customdonation("Ertugal Gazi", "Popular Hospital",
                      "59 Min Ago", "assets/images/bloodgroup.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
