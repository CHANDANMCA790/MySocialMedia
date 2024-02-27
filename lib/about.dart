import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mysocialmedia/splash.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/bg.png'), // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 0),
                child: ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent])
                          .createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/pro.png',
                      height: 550,
                      fit: BoxFit.contain,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.50),
                child: Column(
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Text(
                      'Hello I am',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'CHANDAN KUMAR',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mobile apps Developer',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: 120,
                        height: 45,
                        child: TextButton(
                          onPressed: () {
                            // showSnackBar(context);
                            const url =
                                'https://chandanmca790.github.io/Portfolio';
                            launchURL(url);
                          },
                          child: Text('Contacts Us'),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              primary: Colors.white),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url =
                                'https://whatsapp.com/channel/0029Va4WUoX17Emte0Y9ul2U';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/wc.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA952',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official WhatsApp Channels Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.whatshot,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'WHATSAPP CHANNELS',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url =
                                'https://www.facebook.com/profile.php?id=100038444769139';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/fb.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official Facebook Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.facebook,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'FACEBOOK',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url =
                                'https://whatsapp.com/channel/0029Va4WUoX17Emte0Y9ul2U';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/tg.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA952',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official Telegram Channels Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.telegram,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'TELEGRAM CHANNELS',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url =
                                'https://www.facebook.com/CHANDANMCA790';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/fb.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official Facebook Page Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.facebook,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'FACEBOOK PAGE',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url =
                                'https://www.instagram.com/chandanmca790';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/ig.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official Instagram Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.fact_check,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'INSTAGRAM',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url =
                                'https://www.linkedin.com/in/chandan-kumar-6a67871a8';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/in.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 4.0, sigmaY: 4.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official LinkedIn Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.dataset_linked,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'LINKEDIN',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url = 'https://twitter.com/CHANDANMCA790';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/x.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official Twitter Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .currency_bitcoin_rounded,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'TWITTER',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url = 'https://github.com/CHANDANMCA790';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/gh.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 4.0, sigmaY: 4.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official GitHub Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.gite,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'GITHUB',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url =
                                'https://play.google.com/store/apps/dev?id=8017122643654090099';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/ps.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official Google Play Store Developer Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.tap_and_play_sharp,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'GOOGLE PLAY STORE',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url = 'https://gitlab.com/CHANDANMCA790';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/gl.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official GitLab Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.code,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'GITLAB',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            // Replace 'https://your-facebook-url-here' with the actual URL you want to open
                            const url =
                                'https://stackoverflow.com/users/21451410/chandan-kumar';
                            launchURL(url);
                            // Add your code to handle the click event here
                            // final snackBar = SnackBar(
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //   ),
                            //   backgroundColor: Colors.black,
                            //   behavior: SnackBarBehavior.floating,
                            //   action: SnackBarAction(
                            //     label: 'Dismiss',
                            //     onPressed: () {},
                            //   ),
                            //   content: const Text('Coming soon Facebook..!'),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff252525),
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/so.png'), // Replace with your image asset path
                                    fit: BoxFit
                                        .cover, // Adjust the BoxFit property as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 5.0, sigmaY: 5.0),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CHANDANMCA790',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'CHANDAN KUMAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'The Official Stack Overflow Account Of Chandan Kumar.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushNamed(context, 'quiz');

                                                    // final snackBar = SnackBar(
                                                    //     shape: RoundedRectangleBorder(
                                                    //         borderRadius: BorderRadius.circular(15)
                                                    //     ),
                                                    //     backgroundColor: Colors.black,
                                                    //     behavior: SnackBarBehavior.floating,
                                                    //     action: SnackBarAction(label: 'Dismiss', onPressed: (){
                                                    //
                                                    //     }),
                                                    //     content: const Text('Coming soon Facebook..!', ));
                                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                                  },
                                                  icon: Icon(
                                                    Icons.stacked_bar_chart,
                                                    color: Colors.white,
                                                  )),
                                              Text(
                                                'STACK OVERFLOW',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      14, // You can adjust the font size as needed.
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(0xff252525),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(label: 'Dismiss', onPressed: () {}),
        content: const Text(
          'Coming soon.',
        ));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

// Function to open a URL using the url_launcher package
Future<void> launchURL(String url) async {
  await launch(url);
}
