import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/latihan2_controller.dart';

class Latihan2View extends GetView<Latihan2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Container(
            child: Stack(children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/gdsc.png"),
                        fit: BoxFit.cover),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50))),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 120, 30, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Hi, Reza",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          )),
                    ),
                    Container(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/reja.jpeg'),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(24, 215, 24, 20),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Halo Button'),
                    Text('Pencet Saya'),
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                        onPressed: () {},
                        child: Container(
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.abc,
                                color: Colors.black,
                              ),
                              Text(
                                'Pesan Test Sekarang',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    ));
  }
}
