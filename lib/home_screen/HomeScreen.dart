import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/login_screen/LoginScreen.dart';

class HomeScreen extends StatelessWidget
{
  static const id = "/";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, LoginScreen.id,
            arguments: LoginScreenArgs("My Login Screen"));
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}