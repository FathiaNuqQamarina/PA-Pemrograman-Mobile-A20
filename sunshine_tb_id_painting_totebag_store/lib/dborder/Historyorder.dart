import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/HomePage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Statemanagement/controllerorder.dart';
import 'package:sunshine_tb_id_painting_totebag_store/dborder/listorder.dart';

class DbOrder extends StatelessWidget {
  DbOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference orders = firestore.collection("Orders");

    return Scaffold(
        backgroundColor: ColorPalette.bg2,
        appBar: AppBar(
          backgroundColor: ColorPalette.bg1,
          title: Text(
            "Riwayat Pemesanan",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'ComingSoon',
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                FutureBuilder<QuerySnapshot>(
                  future: orders.get(),
                  builder: (_, snapshot) {
                    return (snapshot.hasData)
                        ? Column(
                            children: snapshot.data!.docs
                                .map(
                                  (e) => Listorder(
                                      e.get('Name :'),
                                      e.get('Email : '),
                                      e.get('Address:'),
                                      e.get('Design:'),
                                      e.get('qyt:'), onUpdate: () {
                                    orders.doc(e.id).update(
                                      {
                                        'Name :': e.get('Name :') +
                                            "| Pesanan Diterima"
                                      },
                                    );
                                  }, onDelete: () {
                                    orders.doc(e.id).delete();
                                  }),
                                )
                                .toList(),
                          )
                        : Text('Loading...');
                  },
                ),
                SizedBox(height: 500),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    width: double.infinity,
                    child: RaisedButton(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      textColor: Colors.white,
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text("Back"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
