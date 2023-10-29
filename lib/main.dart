
import 'package:flutter/material.dart';
import 'package:mysocialmedia/about.dart';
import 'package:mysocialmedia/splash.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'splash',
    debugShowCheckedModeBanner: false,
    routes: {
      'about': (context) => MyAbout(),
      'splash': (context) => Splash(),
    },
  ));
}