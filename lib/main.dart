import 'package:flutter/material.dart';
import 'package:navigation/third_screen/ThirdScreen.dart';

import 'home_screen/HomeScreen.dart';
import 'login_screen/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const HomeScreen(),

        // When navigating to the "/second" route, build the SecondScreen widget.
       // '/second': (context) => const LoginScreen(),
        LoginScreen.id: (context) => const LoginScreen(), // Static variable method

        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}

