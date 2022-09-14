import 'dart:async';
import 'dart:core';

import 'package:carsgo/congif/color.dart';
import 'package:carsgo/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "login",
          style: TextStyle(fontSize: 35),
          selectionColor: primaryColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  " Welcome to  carsgo  ",
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w200,
                      fontSize: 30),
                )),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                "Login In",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //labelText: "user id ",
                    hintText: "user id"),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "password "),
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              color: primaryColor,
              child: ElevatedButton(
                child: Text(
                  'Login',
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: primaryColor),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
