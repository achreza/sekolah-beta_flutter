import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Nama : Achmad Fahreza Alif Pahlevi',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'NIM : 200605110098',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Kelas : F',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/tunjuk.jpg',
                  width: 150,
                  height: 150,
                ),
                Image.asset(
                  'assets/reja.jpeg',
                  width: 150,
                  height: 150,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
