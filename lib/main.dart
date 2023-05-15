import 'package:flutter/material.dart';
import 'package:mujahid/Screens/BottomNavigationBar/customnavigation.dart';
import 'package:mujahid/Screens/HomeScreen/DonationRequest.dart';
import 'package:mujahid/UIS/CounterScreen.dart';
import 'package:mujahid/UIS/CounterScreen2.dart';
import 'package:mujahid/UIS/MyAPISp.dart';
import 'package:mujahid/provider/Provider1.dart';
import 'package:mujahid/provider/provider2.dart';
import 'package:provider/provider.dart';
import 'Screens/Auth/LoginScreen/interface.dart';
import 'Screens/Auth/Verification/Verification.dart';
import 'Screens/OnBoarding/FinishScreen.dart';
import 'Screens/Auth/ForgetPassword/ForgotPass.dart';
import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/Auth/LoginScreen/Widget/LoginPageInterface.dart';
import 'Screens/OnBoarding/OnboardScreen1.dart';
import 'Screens/OnBoarding/OnboardScreen2.dart';
import 'Screens/Auth/RegisterScreen/Register.dart';
import 'Screens/Auth/RegisterScreen/Register1.dart';
import 'package:mujahid/Screens/SplashScreen/SplashScreen.dart';
import 'package:provider/provider.dart';
import 'UIS/MyAPIS.dart';
import 'UIS/MyAPISp.dart';
import 'UIS/testing.dart';
// import 'Screen/Auth/Verification/Verification.dart';
// import 'package:mujahid/BottomNavigationBar/customnavigation.dart';
// import 'package:mujahid/Auth/LoginScreen/interface.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Providernameapis(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Splash',
      routes: {
        '/my1': (context) => NameApisp(),
        // ignore: prefer_const_constructors
        '/CounterScreen': (context) => CounterScreen(),
        '/CounterScreen2': (context) => CounterScreen2(),
        '/my': (context) => NameApis(),
        '/Splash': (context) => SplashScreen(),
        '/Onb1': (context) => OnBoardScreen1(),
        '/Onb2': (context) => OnboardScreen2(),
        '/one': (context) => LoginPage(),
        '/two': (context) => LoginPageInterface(),
        '/reg': (context) => Register(),
        '/reg1': (context) => Register1(),
        '/forgo': (context) => ForgotPass(),
        '/verify': (context) => Verification(),
        '/fin': (context) => FinishScreen(),
        '/home': (context) => HomeScreen(),
        '/custom': (context) => Customnavigationbar(),
        '/donationrequest': (context) => DonationRequest(),
      },
      title: 'Blood Donation APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
