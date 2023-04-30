import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/home/Home.dart';

class Splach extends StatefulWidget {
  static const String namekey="Splach";

  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
 @override
  void initState() {

    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.of(context).pushNamed(Home.nameKey),
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Image.asset(
          "assets/images/splash_light.png",
          fit: BoxFit.fill,
          width: size.width*1,
        ),
      ),
    );
  }
}
