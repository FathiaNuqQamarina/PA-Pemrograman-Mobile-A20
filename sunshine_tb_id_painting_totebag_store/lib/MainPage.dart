import 'package:flutter/material.dart';
import 'package:sunshine_tb_id_painting_totebag_store/AboutUs.dart';

import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/DetailPage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/LandingPage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/LoginPage.dart';

import 'package:sunshine_tb_id_painting_totebag_store/DetailOrderPage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/dborder/Historyorder.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget titleSection = Container(
    //widget judul

    child: Text(
      "\nThere is Our Catalogs :\n",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bg2,
      appBar: AppBar(
        backgroundColor: ColorPalette.bg1,
        title: Text(
          "Sunshine_TB.id ",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: ColorPalette.bg2,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFB7D1C6),
              ),
              child: Text(
                "Sunshine_TB.id",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.swap_horiz),
              title: Text("Riwayat Pemesanan"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return DbOrder();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang Kami"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return AboutUs();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Log Out",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return LandingPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView(children: [
        titleSection,
        Text(
          "  Black Collections",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 10,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Kaktus.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Kaktus Totebag\n IDR 65.000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Produk4(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 10,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/face.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Face Line\n IDR 65.000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Produk5(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 10,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Gurun.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Gurun Totebag\n IDR 65.000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Produk6(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "  Cream Collections",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 10,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Avocado_Dreamin.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Avocado Dreamin\n IDR 65.000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Produk1(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 10,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Cute_Frog.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Cute Frog\n IDR 65.000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Produk2(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 10,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Cute_Dino.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Cute Dino\n IDR 65.000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Produk3(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
