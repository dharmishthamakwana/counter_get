import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled19/screen/home/view/home_Screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (p0) => HomeScreen()},
  ));
}
