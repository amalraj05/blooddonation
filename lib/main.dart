import 'package:blooddonation/firebase_options.dart';
import 'package:blooddonation/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';


void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MaterialApp(
    home: splashscreen(),
    debugShowCheckedModeBanner: false,
  ));
}
