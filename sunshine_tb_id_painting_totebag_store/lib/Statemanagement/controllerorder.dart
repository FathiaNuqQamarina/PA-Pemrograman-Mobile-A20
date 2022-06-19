import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxOrderController extends GetxController {
  final name = ''.obs;
  final email = ''.obs;
  final address = ''.obs;
  final design = ''.obs;
  final qty = ''.obs;

  final controllername = TextEditingController();
  final controlleremail = TextEditingController();
  final controlleraddress = TextEditingController();
  final controllerdesign = TextEditingController();
  final controllerqty = TextEditingController();
}
