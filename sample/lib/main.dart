import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Wi().c1(),
      ),
    );
  }
}

class Wi {
  Widget c1() {
    return Container(
      color: Colors.green,
    );
  }
}
