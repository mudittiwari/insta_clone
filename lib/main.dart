import 'dart:async';

import 'package:flutter/material.dart';

import 'loginscreen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram_clone",
      home: homepage(),
      // theme: ThemeData(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), mainfunction);
  }

  void mainfunction() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => loginscreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image(
              width: 80,
              image: AssetImage("assets/instalogo.jpg"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              child: Column(children: [
                Text(
                  "from",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                Image(
                  width: 160,
                  image: AssetImage("assets/facebooklogo.jpg"),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
