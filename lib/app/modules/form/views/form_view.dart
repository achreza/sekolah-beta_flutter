import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/form_controller.dart';

class FormView extends GetView<FormController> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10, top: 40, right: 10),
                child: Text(
                  "Login Menggunakan Email dan Password anda",
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                )),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 50,
                width: 335,
                child: TextFormField(
                  obscureText: false,
                  controller: emailController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.people),
                    labelText: 'Email',
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 16),
                height: 50,
                width: 335,
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(onPressed: () {}, child: Text("Login")))
          ],
        ),
      ),
    );
  }
}
