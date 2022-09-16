import 'package:carsgo/congif/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("message")),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "all the message are here ",
                style: TextStyle(color: primaryColor),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
            ),
            Container(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.add_comment),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
