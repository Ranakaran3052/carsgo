import 'package:carsgo/congif/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listveiwpage extends StatefulWidget {
  const listveiwpage({super.key});

  @override
  State<listveiwpage> createState() => _listveiwpageState();
}

class _listveiwpageState extends State<listveiwpage> {
  final List<String> name = <String>[
    'aniket maurya ',
    'hitesh kumar ',
    'pillai abhijith ',
    'aniket maurya ',
    'hitesh kumar ',
    'pillai abhijith ',
    'aniket maurya ',
    'hitesh kumar ',
    'pillai abhijith ',
    'aniket maurya ',
    'hitesh kumar ',
    'pillai abhijith ',
  ];
  final List<String> en = <String>[
    '98765645689 ',
    '8569745869 ',
    ' 5896458796 ',
    '98765645689 ',
    '8569745869 ',
    ' 5896458796 ',
    '98765645689 ',
    '8569745869 ',
    ' 5896458796 ',
    '98765645689 ',
    '8569745869 ',
    ' 5896458796 ',
    '98765645689 ',
    '8569745869 ',
    ' 5896458796 ',
    '98765645689 ',
    '8569745869 ',
    ' 5896458796 ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CARSGO")),
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: name.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: primaryColor,
                  size: 40,
                ),
                title: Text('${name[index]}'),
                subtitle: Text('${en[index]}'),
              ),
            );

            //  Container(
            //   height: 50,
            //   color: Colors.amber[colorCodes[index]],
            //   child: Center(child: Text('Entry ${entries[index]}')),
            // );
          }),
    );
  }
}
