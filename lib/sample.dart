import 'package:flutter/material.dart';

void main() {
  runApp(Sample());
}

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      theme: ThemeData(backgroundColor: Colors.black),
      // home: test
    );
  }
}


