import 'package:carsgo/congif/color.dart';
import 'package:carsgo/drawer/message.dart';
import 'package:carsgo/drawer/profile.dart';
import 'package:carsgo/school.dart';
import 'package:carsgo/drawer/settings.dart';
import 'package:carsgo/screeen/listveiwpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _selectedIndex = 1;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   SchoolPage(),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CARSGO")),
        backgroundColor: primaryColor,
      ),

      //drawer editing area
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
                child: DecoratedBox(
                    decoration: BoxDecoration(color: primaryColor),
                    child: Center(
                      child: Text(
                        "home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                        ),
                      ),
                    ))),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("profile"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const profile()));
              },
            ),
            ListTile(
                leading: Icon(Icons.message),
                title: Text(" message "),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const message()),
                  );
                  ;
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text(" settings "),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const settings()));
                })
          ],
        ),
      ),
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      body: Container(
        //body area
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                          scale: 1,
                          height: 200,
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
                              onPrimary: Colors.white70, primary: primaryColor),
                          onPressed: () {},
                          child: Text(" Tap to next "),
                        ),
                      ]),
                ),
              ),
            ]),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => listveiwpage()));
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      ),
    );
  }
}
