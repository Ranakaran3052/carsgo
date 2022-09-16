import 'package:carsgo/congif/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screeen/home.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  TextEditingController dateofbirthController = TextEditingController();
  TextEditingController vehicleInfoController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              "profile",
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: primaryColor),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25),
            const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.account_circle)),
            SizedBox(
              height: 15,
            ),
            Container(
                child: Text(
              "your name ",
            )),
            Container(
              child: Text("email id "),
            ),
            Divider(height: 10),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: dateofbirthController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "date of birth",
                    hintText: " 12-06-2000"),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: vehicleInfoController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "vehicle name ",
                    hintText: " bajaj-as200"),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: locationController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "location ",
                    hintText: " gujarat-surat"),
              ),
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                }),
                child: Text("update"))
          ],
        ),
      ),
    );
  }
}
