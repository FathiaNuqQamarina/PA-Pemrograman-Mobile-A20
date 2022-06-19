import 'package:flutter/material.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/HomePage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bg1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return HomePage();
                      }),
                    );
                  },
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 300,
                  child: Text(
                    "Sunshine_TB.id adalah Online Store yang menjual produk lokal brand dari Indonesia berupa tote bag dengan desain painting print. Tersedia Lebih dari 100 desain tote bag.\n\n\nAwali harimu dengan tampil stylish dangan tas unggulan di setiap sudutnya dan berkualitas di setiap desainnya\n\n\nSelamat Berbelanja !  ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Handlee',
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
