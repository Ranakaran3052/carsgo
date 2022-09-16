import 'package:carsgo/screeen/home.dart';
import 'package:carsgo/login.dart';
import 'package:carsgo/screeen/listveiwpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CARSGO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          // listveiwpage(),
          const loginscreen(),
    );
  }
}
