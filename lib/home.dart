import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("CARSGO"))),

        //drawer editing area
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 82, 161, 226)),
                      child: Center(
                        child: Text(
                          "home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                          ),
                        ),
                      )))
            ],
          ),
        ),
        body: Container(
          //body area
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[400],
          ),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.add),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(35),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'asset/images/BMW_logo.jpeg',
                          scale: 2,
                        ),
                        Divider(thickness: 3),
                        Text(
                          "BRAND : BMW  ",
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ),
                        Divider(thickness: 3),
                        Text("BMW : BAYERISCHE MOTOREN WERKE  "),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            " * BMW MODELS : X Series , M Series , D series , I series  ",
                          ),
                        ),
                        Text(
                          " * basically 'M' is the fammous series in the cars clubs ",
                        ),
                        Text(
                          " * they basically focus on the power of vehicle ",
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              onPrimary: Colors.yellow[200],
                              primary: Colors.blue[300]),
                          onPressed: () {},
                          child: Text(" Tap to next "),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
        ));
  }
}
