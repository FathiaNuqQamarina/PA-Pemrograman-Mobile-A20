import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/LoginPage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bg2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.cover,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "Registrasi Akun Anda",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Email Anda'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: 'Masukkan Password Anda'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(height: 30.0),
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
                          Alert(
                            context: context,
                            type: AlertType.success,
                            title: "Registrasi berhasil",
                            desc: "Selamat Akun Anda Telah Terdaftar",
                            buttons: [
                              DialogButton(
                                  child: Text(
                                    "Back to Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  onPressed: () {
                                    signUp();
                                  })
                            ],
                          ).show();
                        },
                        child: Text("Ragister"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sudah Punya Akun ?",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const LoginPage());
                        },
                        child: Text(
                          " Login",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference user = firestore.collection('user');
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());

      await user.add({
        'email': emailController.text,
        'password': passwordController.text,
      });
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    ;
    Get.to(LoginPage());
  }
}
