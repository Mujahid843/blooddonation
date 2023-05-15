// import 'dart:math';
// import 'dart:ui';

import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:mujahid/Widget/Global.dart';
// import 'package:mujahid/BottomNavigationBar/customnavigation.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scafkey = GlobalKey<ScaffoldState>();
  int currentIndexe = 0;
  List<String> images = [
    'assets/images/Homoimg.png',
    "https://ichef.bbci.co.uk/news/976/cpsprodpb/182FF/production/_107317099_blooddonor976.jpg.webp",
    "https://api.parashospitals.com/uploads/2017/06/Importance-of-Blood-Donation.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scafkey,
        appBar: AppBar(
          leadingWidth: 800,
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_circle_left_sharp, color: Colors.black),
            onPressed: () => Navigator.pushNamed(context, '/two'),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: IconButton(
                            onPressed: () {
                              _scafkey.currentState!.openDrawer();
                            },
                            icon: Icon(
                              Icons.grid_view_rounded,
                              color: Color.fromARGB(255, 255, 33, 86),
                            ),
                          )),
                      Container(
                        alignment: Alignment.center,
                        width: 245,
                      ),
                      Container(
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                    width: 290,
                    height: 140,
                    alignment: Alignment.center,
                    child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          currentIndexe = index % images.length;
                        });
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.0, vertical: 4.0),
                          child: SizedBox(
                            child: Image.network(
                              images[index % images.length],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 8,
                  ),
                  Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < images.length; i++)
                          buildIndicator(currentIndexe == i),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 5,
                  ),
                  Container(
                    width: 290,
                    height: 195,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: GridView.count(
                        mainAxisSpacing: 7,
                        scrollDirection: Axis.vertical,
                        crossAxisCount: 3,
                        crossAxisSpacing: 7,
                        children: [
                          Custombutton(
                              'Find Donars', 'assets/images/finddonor.png'),
                          Custombutton('Donates', "assets/images/donates.png"),
                          Custombutton(
                              'Order Blood', "assets/images/orderblood.png"),
                          Custombutton(
                              "Assistant", "assets/images/assistant.png"),
                          Custombutton("Report", "assets/images/report.png"),
                          Custombutton("Compaign", "assets/images/compain.png"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 5,
                  ),
                  SizedBox(
                    width: 290,
                    // ignore: prefer_const_constructors
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 188),
                          child: Text(
                            "Donation Request",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                color: Color.fromARGB(255, 34, 33, 33),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          height: 5,
                        ),
                        Customdonation("Amir Hamza", "Hertford  Hospital",
                            "5 Min Ago", "assets/images/bloodgroup.png")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   height: 35,
            //   width: 35,
            //   child: FloatingActionButton(
            //     onPressed: () {},
            //     child: Image.asset("assets/images/homebttton.png"),
            //     backgroundColor: Color(0xFFFF2156),
            //     elevation: 0,
            //   ),
            // ),
            // Container(
            //   child: Customnavigationbar(),
            // )
          ]),
        ));
  }
}

Widget buildIndicator(IsSlected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2),
    child: Container(
      width: IsSlected ? 8 : 7,
      height: IsSlected ? 8 : 7,
      alignment: Alignment.center,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: IsSlected
            ? const Color.fromARGB(255, 255, 33, 86)
            : const Color(0xFFE5E5E5),
      ),
    ),
  );
}
