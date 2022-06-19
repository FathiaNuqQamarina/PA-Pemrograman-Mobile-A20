import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Constans.dart';
import 'package:sunshine_tb_id_painting_totebag_store/DetailOrderPage.dart';
import 'package:sunshine_tb_id_painting_totebag_store/Statemanagement/controllerorder.dart';
import 'package:sunshine_tb_id_painting_totebag_store/dborder/listorder.dart';

class Formpage extends StatelessWidget {
  Formpage({Key? key}) : super(key: key);
  final TextEditingController controllername = TextEditingController();
  final TextEditingController controlleremail = TextEditingController();
  final TextEditingController controlleraddress = TextEditingController();
  final TextEditingController controllerdesign = TextEditingController();
  final TextEditingController controllerqty = TextEditingController();

  @override
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final GetxOrderController order = Get.put(GetxOrderController());
  Widget build(BuildContext context) {
    Widget layoutSection = Column(children: [
      SizedBox(
        height: 20,
      ),
      Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/logo.png",
            ),
          ),
        ),
      ),
    ]);

    Widget titleSection = Container(
      //widget judul
      margin: EdgeInsets.only(top: 50.0),

      child: Text(
        "\nMAKE YOUR ORDER HERE :\n",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Handlee',
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
    );

    Widget orderSection = Container(
      //widget judul
      margin: EdgeInsets.only(top: 50.0),

      child: Text(
        "\nYOUR TOTE BAG :\n",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );

    return Scaffold(
      backgroundColor: ColorPalette.bg2,
      appBar: AppBar(
        backgroundColor: ColorPalette.bg1,
        title: Text(
          "Form Pesanan",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'ComingSoon',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        layoutSection,
        titleSection,
        SizedBox(height: 50),
        TextField(
          controller: order.controllername,
          decoration: InputDecoration(
            labelText: "Your Name *",
            hintText: "Enter Your Name",
            border: OutlineInputBorder(),
            fillColor: ColorPalette.bg1,
          ),
        ),
        SizedBox(height: 50),
        TextField(
          controller: order.controlleremail,
          decoration: InputDecoration(
            labelText: "Email *",
            hintText: "totabag@gmail.com",
            border: OutlineInputBorder(),
            fillColor: ColorPalette.bg1,
          ),
        ),
        SizedBox(height: 50),
        TextField(
          controller: order.controlleraddress,
          maxLines: 10,
          decoration: InputDecoration(
            labelText: "Delivery Address *",
            hintText: "Enter Your Address",
            border: OutlineInputBorder(),
            fillColor: ColorPalette.bg1,
          ),
        ),
        orderSection,
        SizedBox(height: 50),
        TextField(
          controller: order.controllerdesign,
          maxLines: 5,
          decoration: InputDecoration(
            labelText: "Design You Want ? *",
            hintText: "Ex : Cute Dino",
            border: OutlineInputBorder(),
            fillColor: ColorPalette.bg1,
          ),
        ),
        SizedBox(height: 50),
        TextField(
          controller: order.controllerqty,
          decoration: InputDecoration(
            labelText: "Quantity *",
            hintText: "Ex : 1/2/3/....",
            border: OutlineInputBorder(),
            fillColor: ColorPalette.bg1,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Get.to(TransactionPage());
          },
          child: Text(
            "Checkout Now !",
            style: TextStyle(fontSize: 18),
          ),
          style: TextButton.styleFrom(
            backgroundColor: ColorPalette.bg1,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
// class Formpage extends StatefulWidget {
//   const Formpage({Key? key}) : super(key: key);

//   @override
//   State<Formpage> createState() => _FormpageState();
// }

// enum Sizechart { unknown, sm, md, lg }

// class _FormpageState extends State<Formpage> {
//   Sizechart size = Sizechart.unknown;
//   final controllername = TextEditingController();
//   final controlleremail = TextEditingController();
//   final controlleraddress = TextEditingController();
//   final controllerdesign = TextEditingController();
//   final controllerqty = TextEditingController();
//   String name = "", email = "", address = "", design = "", qty = "";

//   String getSizechart(Sizechart? value) {
//     if (value == Sizechart.sm) {
//       return "Sm | 13x3,15";
//     } else if (value == Sizechart.md) {
//       return "Md | 16,03x3,15";
//     } else if (value == Sizechart.lg) {
//       return "Lg | 18x3,15";
//     }
//     return "size cannot be empty ";
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     controllername.dispose();
//     controlleremail.dispose();
//     controlleraddress.dispose();
//     controllerdesign.dispose();
//     controllerqty.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget titleSection = Container(
//       //widget judul
//       margin: EdgeInsets.only(top: 50.0),
//       child: Text(
//         "\nMAKE YOUR ORDER HERE :\n",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//             fontFamily: 'Handlee',
//             fontSize: 25,
//             color: Colors.black,
//             fontWeight: FontWeight.bold),
//       ),
//     );

//     Widget orderSection = Container(
//       //widget judul
//       margin: EdgeInsets.only(top: 50.0),

//       child: Text(
//         "\nYOUR TOTE BAG :\n",
//         textAlign: TextAlign.center,
//         style: TextStyle(
//             fontFamily: 'Handlee',
//             fontSize: 25,
//             color: Colors.black,
//             fontWeight: FontWeight.bold),
//       ),
//     );

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: ColorPalette.bg1,
//         title: Text("Form Pemesanan"),
//         elevation: 0,
//       ),
//       body: ListView(
//         children: [
//           titleSection,
//           SizedBox(height: 50),
//           TextField(
//             controller: controllername,
//             decoration: InputDecoration(
//               labelText: "Your Name *",
//               hintText: "Enter Your Name",
//               border: OutlineInputBorder(),
//               fillColor: Colors.white,
//             ),
//           ),
//           SizedBox(height: 50),
//           TextField(
//             controller: controlleremail,
//             decoration: InputDecoration(
//               labelText: "Email *",
//               hintText: "totabag@gmail.com",
//               border: OutlineInputBorder(),
//               fillColor: Colors.white,
//             ),
//           ),
//           SizedBox(height: 50),
//           TextField(
//             controller: controlleraddress,
//             maxLines: 10,
//             decoration: InputDecoration(
//               labelText: "Delivery Address *",
//               hintText: "Enter Your Address",
//               border: OutlineInputBorder(),
//               fillColor: Colors.white,
//             ),
//           ),
//           orderSection,
//           SizedBox(height: 50),
//           TextField(
//             controller: controllerdesign,
//             maxLines: 5,
//             decoration: InputDecoration(
//               labelText: "Design You Want ? *",
//               hintText: "Ex : Cute Dino",
//               border: OutlineInputBorder(),
//               fillColor: Colors.white,
//             ),
//           ),
//           SizedBox(height: 50),
//           TextField(
//             controller: controllerqty,
//             decoration: InputDecoration(
//               labelText: "Quantity *",
//               hintText: "Ex : One/Two/Three/....",
//               border: OutlineInputBorder(),
//               fillColor: Colors.white,
//             ),
//           ),
//           Text(
//             "\nSize * :\n",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 fontFamily: 'Handlee',
//                 fontSize: 14,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold),
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: ListTile(
//                   title: const Text(
//                     "Sm\n13x3,15",
//                     style: TextStyle(
//                         fontFamily: 'Handlee',
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   leading: Radio(
//                     groupValue: size,
//                     value: Sizechart.sm,
//                     onChanged: (Sizechart? value) {
//                       setState(() {
//                         size = value!;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: ListTile(
//                   title: const Text(
//                     "Md\n16,03x3,15",
//                     style: TextStyle(
//                         fontFamily: 'Handlee',
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   leading: Radio(
//                     groupValue: size,
//                     value: Sizechart.md,
//                     onChanged: (Sizechart? value) {
//                       setState(() {
//                         size = value!;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: ListTile(
//                   title: const Text(
//                     "Lg\n18x3,15",
//                     style: TextStyle(
//                         fontFamily: 'Handlee',
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   leading: Radio(
//                     groupValue: size,
//                     value: Sizechart.lg,
//                     onChanged: (Sizechart? value) {
//                       setState(() {
//                         size = value!;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 name = controllername.text;
//                 email = controlleremail.text;
//                 address = controlleraddress.text;
//                 design = controllerdesign.text;
//                 qty = controllerqty.text;
//               });
//               showDialog<String>(
//                 context: context,
//                 builder: (BuildContext context) => AlertDialog(
//                   backgroundColor: ColorPalette.bg1,
//                   title: const Text(
//                     'You have successfully\nCheckedOut !',
//                     textAlign: TextAlign.center,
//                   ),
//                   content: const Text(
//                     'Thank You For Order!\nConfirmation of your order\nwill be sent by email\n\nRincian Pesanan Terdapat di Menu Riwayat Pemesanan',
//                     textAlign: TextAlign.justify,
//                   ),
//                   actions: <Widget>[
//                     TextButton(
//                       onPressed: () => Navigator.pop(context, 'OK'),
//                       child: const Text(
//                         'OK',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//             child: Text(
//               "Checkout Now !",
//               style: TextStyle(fontSize: 18),
//             ),
//             style: TextButton.styleFrom(
//               backgroundColor: Colors.black,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             "YOUR DETAILS ORDER :",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 25,
//               fontFamily: 'Handlee',
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             "Name : $name",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Email : $email',
//             textAlign: TextAlign.left,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Address : $address',
//             textAlign: TextAlign.left,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Design: $design',
//             textAlign: TextAlign.left,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Quantity : $qty',
//             textAlign: TextAlign.left,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Size : ${getSizechart(size)}',
//             textAlign: TextAlign.left,
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
