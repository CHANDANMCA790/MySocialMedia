import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mysocialmedia/about.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyAbout()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.topCenter,
        color: Colors.black,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: ShaderMask(
                  shaderCallback: (rect){
                    return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset('assets/profileblack.png')),
            ),
          ],
        ),
      ),
    );
  }
}
