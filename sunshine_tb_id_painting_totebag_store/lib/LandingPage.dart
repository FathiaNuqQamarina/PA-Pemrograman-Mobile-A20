import 'package:flutter/material.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/HomePage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/LoginPage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/main.dart';

class LandingPage extends StatelessWidget {
  final String image = "assets/logo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.bg2,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.bg1,
                          image: DecorationImage(
                              image: AssetImage(image), fit: BoxFit.contain),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(300.0),
                          ),
                        ),
                        margin: EdgeInsets.only(bottom: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Sunshine_TB.id",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Temukan Tote yang Sesuai\n dengan Gaya Anda",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                width: double.infinity,
                child: RaisedButton(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  textColor: Colors.white,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text("Les't Started"),
                ))
          ],
        ));
  }
}
