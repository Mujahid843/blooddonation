import 'package:flutter/material.dart';
import 'package:mujahid/Screens/Auth/Verification/Verification.dart';
import 'package:mujahid/Screens/HomeScreen/DonationRequest.dart';
import 'package:mujahid/Screens/HomeScreen/HomeScreen.dart';

import '../../UIS/MyAPIS.dart';

class Customnavigationbar extends StatefulWidget {
  const Customnavigationbar({super.key});

  @override
  State<Customnavigationbar> createState() => _CustomnavigationbarState();
}

class _CustomnavigationbarState extends State<Customnavigationbar> {
  int _currentIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    DonationRequest(),
    NameApis(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 255, 33, 86),
          //Floating action button on Scaffold
          onPressed: () {
            //code to execute on button press
          },
          child: Image.asset(
            'assets/images/homebttton.png',
            height: 200,
          ) //icon inside button
          ),

      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        notchMargin: 2.0,

        //bottom navigation bar on scaffold
        color: Colors.white,
        shape: CircularNotchedRectangle(),

        //shape of notch
        //notche margin between floating button and bottom appbar
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          height: kBottomNavigationBarHeight,
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0 ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: _currentIndex == 1 ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.auto_graph_sharp,
                  color: _currentIndex == 2 ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  _onItemTapped(2);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: _currentIndex == 3 ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  _onItemTapped(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Category')),
    );
  }
}
