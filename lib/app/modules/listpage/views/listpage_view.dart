import 'package:f200605110098_prak2/app/modules/listpage/models/player.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/listpage_controller.dart';

class ListpageView extends GetView<ListpageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#1E90FF"),
        title: Text('List PLayer'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: ListView(
          children: playerList.map((player) {
            // ignore: deprecated_member_use
            return FlatButton(
                onPressed: () {},
                child: Container(
                  height: 100,
                  child: Card(
                    color: HexColor("#424B5E"),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                              width: 70,
                              height: 70,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(player.imageAsset),
                              )),
                        ),
                        Expanded(
                          flex: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 22, 10, 0),
                                child: Container(
                                  color: Colors.white,
                                  height: 50,
                                  width: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8, 20, 8, 1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  player.name + " (" + player.age + ")",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Raleway',
                                      color: Colors.white54),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Club : ${player.club}',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'Raleway',
                                      color: Colors.white54),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white70,
                        ))
                      ],
                    ),
                  ),
                ));
          }).toList(),
        ),
      ),
    );
  }
}
