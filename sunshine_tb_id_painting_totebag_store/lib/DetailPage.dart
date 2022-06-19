import 'package:flutter/material.dart';
import 'package:sunshine_tb_id_painting_totebag_store/FormPage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/HomePage.dart';

class Produk1 extends StatelessWidget {
  const Produk1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return HomePage();
                          }),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.bg1,
                          image: DecorationImage(
                              image: AssetImage('assets/Avocado_Dreamin.png'),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(300.0),
                            bottomLeft: Radius.circular(300.0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Avocado Dreamin",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("IDR 65.000"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              ". Memakai Resleting\n. Bahan Kanva (Anti Air)\n. UK : 30x38 cm\n. 1 kg muat 10 pcs",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 30.0,
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Formpage()),
                    );
                  },
                  child: Text("Make Order"),
                ))
          ],
        ));
  }
}

class Produk2 extends StatelessWidget {
  const Produk2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return HomePage();
                          }),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.bg1,
                          image: DecorationImage(
                              image: AssetImage('assets/Cute_Frog.png'),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(300.0),
                            bottomLeft: Radius.circular(300.0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Cute Frog",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("IDR 65.000"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              ". Memakai Resleting\n. Bahan Kanva (Anti Air)\n. UK : 30x38 cm\n. 1 kg muat 10 pcs",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 30.0,
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Formpage()),
                    );
                  },
                  child: Text("Make Order"),
                ))
          ],
        ));
  }
}

class Produk3 extends StatelessWidget {
  const Produk3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return HomePage();
                          }),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.bg1,
                          image: DecorationImage(
                              image: AssetImage('assets/Cute_Dino.png'),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(300.0),
                            bottomLeft: Radius.circular(300.0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Cute Dino",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("IDR 65.000"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              ". Memakai Resleting\n. Bahan Kanva (Anti Air)\n. UK : 30x38 cm\n. 1 kg muat 10 pcs",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 30.0,
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Formpage()),
                    );
                  },
                  child: Text("Make Order"),
                ))
          ],
        ));
  }
}

class Produk4 extends StatelessWidget {
  const Produk4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return HomePage();
                          }),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.bg2,
                          image: DecorationImage(
                              image: AssetImage('assets/Kaktus.png'),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(300.0),
                            bottomLeft: Radius.circular(300.0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Kaktus Totebag",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("IDR 65.000"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              ". Memakai Resleting\n. Bahan Kanva (Anti Air)\n. UK : 30x38 cm\n. 1 kg muat 10 pcs",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 30.0,
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Formpage()),
                    );
                  },
                  child: Text("Make Order"),
                ))
          ],
        ));
  }
}

class Produk5 extends StatelessWidget {
  const Produk5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return HomePage();
                          }),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.bg2,
                          image: DecorationImage(
                              image: AssetImage('assets/face.png'),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(300.0),
                            bottomLeft: Radius.circular(300.0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Face Line",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("IDR 65.000"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              ". Memakai Resleting\n. Bahan Kanva (Anti Air)\n. UK : 30x38 cm\n. 1 kg muat 10 pcs",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 30.0,
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Formpage()),
                    );
                  },
                  child: Text("Make Order"),
                ))
          ],
        ));
  }
}

class Produk6 extends StatelessWidget {
  const Produk6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return HomePage();
                          }),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.bg2,
                          image: DecorationImage(
                              image: AssetImage('assets/Gurun.png'),
                              fit: BoxFit.contain),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(300.0),
                            bottomLeft: Radius.circular(300.0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Gurun Totebag",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("IDR 65.000"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              ". Memakai Resleting\n. Bahan Kanva (Anti Air)\n. UK : 30x38 cm\n. 1 kg muat 10 pcs",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
            ),
            SizedBox(
              height: 30.0,
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Formpage()),
                    );
                  },
                  child: Text("Make Order"),
                ))
          ],
        ));
  }
}
