import 'dart:async';

import 'package:blooddonation/login.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

   @override 
 void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login(),)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25,left: 25),
              child: Image.asset("images/blood.png"),
            ),
            SizedBox(height: 30,),
            Text("Blood Dontion App",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}