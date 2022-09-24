import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/hello_world_controller.dart';

class HelloWorldView extends GetView<HelloWorldController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/mtf.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          color: Colors.white60,
          height: double.infinity,
          width: double.infinity,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/gdsc.svg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 15,
              ),
              Text('Hello,',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.w600))),
              Text('World!',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 60,
                          fontWeight: FontWeight.bold))),
            ],
          ),
        )
      ],
    ));
  }
}
