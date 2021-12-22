import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kwg_tech/utils/colors.dart';
import 'package:kwg_tech/views/home.dart';

class SplashScreenView extends StatefulWidget {
  SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/kwg.jpg",
                height: 250,
                width: 334,
              ),
              const SizedBox(height: 16,),
              Container(
                width: 250,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      side: BorderSide(width: 2, color: CustomColor.blue),
                    ),
                    child: Text("Posts", style: TextStyle(color: CustomColor.blue, fontSize: 16),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
