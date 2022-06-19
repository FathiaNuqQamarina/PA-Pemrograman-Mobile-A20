import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Statemanagement/controllerorder.dart';
import 'package:get/get.dart';
import 'package:sunshine_tb_id_painting_totebag_store/dborder/Historyorder.dart';

class TransactionPage extends StatelessWidget {
  TransactionPage({Key? key}) : super(key: key);
  final TextEditingController controllername = TextEditingController();
  final TextEditingController controlleremail = TextEditingController();
  final TextEditingController controlleraddress = TextEditingController();
  final TextEditingController controllerdesign = TextEditingController();
  final TextEditingController controllerqty = TextEditingController();

  final GetxOrderController order = Get.find();
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference orders = firestore.collection("Orders");

    return Scaffold(
        backgroundColor: ColorPalette.bg2,
        appBar: AppBar(
          backgroundColor: ColorPalette.bg1,
          title: Center(
            child: Text(
              "Detail Order",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Your Details Order",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'ComingSoon',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Name : ${order.controllername.text}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'ComingSoon',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Email : ${order.controlleremail.text}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'ComingSoon',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Address:${order.controlleraddress.text}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'ComingSoon',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Design: ${order.controllerdesign.text}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'ComingSoon',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Quantity: ${order.controllerqty.text}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'ComingSoon',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: ColorPalette.bg1,
                          title: const Text(
                            'You have successfully\nCheckedOut !',
                            textAlign: TextAlign.center,
                          ),
                          content: const Text(
                            'Thank You For Order!\nConfirmation of your order\n Pesanan Bisa Dilihat Di Riwayat Pemesanan',
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (_) {
                                    return DbOrder();
                                  }),
                                );
                                orders.add({
                                  'Name :': order.controllername.text,
                                  'Email : ': order.controlleremail.text,
                                  'Address:': order.controlleraddress.text,
                                  'Design:': order.controllerdesign.text,
                                  'qyt:': order.controllerqty.text
                                });

                                controllername.text = '';
                                controlleremail.text = '';
                                controlleraddress.text = '';
                                controllerdesign.text = '';
                                controllerqty.text = '';
                              },
                              child: const Text(
                                'OK',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      "Order Now !",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: ColorPalette.bg1,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
