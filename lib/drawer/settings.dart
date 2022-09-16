import 'package:carsgo/congif/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "settings",
          textAlign: TextAlign.center,
          selectionColor: primaryColor,
        )),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(35),
            child: Text(
              "dark mode",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            child: Text(
              "update",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 35, color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
