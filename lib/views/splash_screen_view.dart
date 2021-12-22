import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kwg_tech/views/home.dart';

class SplashScreenView extends StatefulWidget {
  SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/images/kwg.jpg",
            height: 250,
            width: 334,
          ),
        ),
      ),
    );
  }
}
