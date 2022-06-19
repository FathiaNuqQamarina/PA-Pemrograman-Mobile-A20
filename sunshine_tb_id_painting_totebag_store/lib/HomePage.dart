import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';

import 'package:sunshine_tb_id_painting_totebag_store/LandingPage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/MainPage.dart';

import 'package:sunshine_tb_id_painting_totebag_store/DetailOrderPage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/dborder/Historyorder.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  int _bottomNavCurrentIndex = 0;

  List<Widget> _container = [
    new MainPage(),
    new DbOrder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorPalette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: ColorPalette.bg4,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.swap_horiz,
              color: ColorPalette.bg4,
            ),
            icon: new Icon(
              Icons.swap_horiz,
              color: Colors.grey,
            ),
            label: 'Riwayat Pemesanan',
          ),
        ],
      ),
    );
  }
}
