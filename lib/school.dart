import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('SchoolPage'),
    );
  }
}
