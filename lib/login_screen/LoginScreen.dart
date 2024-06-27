import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{
  static const id = "/second"; // static means single memory allocation, const means athe mattorale change cheyannum padilla
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context)
  {
    final LoginScreenArgs args = ModalRoute.of(context)!.settings.arguments as LoginScreenArgs; // return cheyunnathe oru object aane. ! this used after variable means variable orikalum null aavilla enne paranje kodukkan.

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Replace this screen go to the third screen
           // Navigator.pop(context);
            Navigator.pushReplacementNamed(context, '/third');

          },
          child: const Text('Go To The Next!'),
        ),
      ),
    );
  }
}

class LoginScreenArgs{
  String title;
  LoginScreenArgs(this.title);  // Constructor , this keyword is used for classine akathulla global variableleke point cheyyan vendi.
}