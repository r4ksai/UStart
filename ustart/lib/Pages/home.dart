import 'package:flutter/material.dart';
import 'package:ustart/Widgets/bottom_navigator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedBottomButton = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ustart'),
        ),
        body: Container(
          color: Colors.teal,
        ),
        bottomNavigationBar: BottomNavigator(
          onPress: (index) {
            setState(() {
              selectedBottomButton = index;
            });
          },
          activeButton: selectedBottomButton,
        ),
      ),
    );
  }
}
