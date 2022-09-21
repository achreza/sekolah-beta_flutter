import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/latihan_controller.dart';

class LatihanView extends GetView<LatihanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Halo saya latihan'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: Text(
            "REC",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Saya widget ditengah"),
                Container(
                  color: Colors.deepOrange,
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Saya Kiri"),
                    Text("Saya Kanan"),
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Container(
                    width: 100,
                    color: Colors.purple,
                    child: Center(
                      child: Text("Saya berwarna",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.black,
              child: Center(
                child: Text("Saya bawah sendiri",
                    style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ));
  }
}
