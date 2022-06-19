import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/HomePage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/LandingPage.dart';

class Splash_screen extends StatefulWidget {
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return LandingPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2)
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ColorPalette.bg1, ColorPalette.bg2],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Image.asset(
              "assets/logo.png",
              height: 300.0,
              width: 500.0,
            ),
          )
        ],
      ),
    ));
  }
}
