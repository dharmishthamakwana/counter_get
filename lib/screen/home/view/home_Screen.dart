import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  homeController homecontroller = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
        ),
        body: Center(
          child: Obx(
            () => Text(
              "${homecontroller.i}",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
                onPressed: () {
                  homecontroller.i++;
                },
                child: Icon(Icons.add)),
            FloatingActionButton(
                onPressed: () {
                  homecontroller.i--;
                },
                child: Icon(Icons.minimize)),
            FloatingActionButton(
                onPressed: () {
                  homecontroller.i.value = (homecontroller.i * 2).toInt();
                },
                child: Text("2X")),
            FloatingActionButton(
                onPressed: () {
                  homecontroller.i.value = (homecontroller.i * 3).toInt();
                },
                child: Text("3X")),
            FloatingActionButton(
                onPressed: () {
                  homecontroller.i.value = (homecontroller.i * 4).toInt();
                },
                child: Text("4X")),
            FloatingActionButton(
                onPressed: () {
                  homecontroller.i.value = (homecontroller.i * 5).toInt();
                },
                child: Text("5X")),
          ],
        ),
      ),
    );
  }
}
