import 'package:flutter/material.dart';
import 'package:ustart/Widgets/bottom_navigator.dart';
import 'package:ustart/constants.dart';
import 'package:ustart/Pages/home.dart';

class TabbedNavigationController extends StatefulWidget {
  @override
  _TabbedNavigationControllerState createState() =>
      _TabbedNavigationControllerState();
}

class _TabbedNavigationControllerState
    extends State<TabbedNavigationController> {
  int selectedBottomButton = 0;
  List<Widget> tabs = [
    Home(),
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.purple,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: selectedBottomButton == 0
            ? AppBar(
                title: Text(
                  'USTART',
                  style: kLogoStyle,
                ),
                backgroundColor: Colors.white,
                actions: [
                  IconButton(icon: Icon(Icons.search), onPressed: null),
                  IconButton(icon: Icon(Icons.shopping_bag), onPressed: null),
                  IconButton(icon: Icon(Icons.message), onPressed: null)
                ],
              )
            : null,
        body: tabs[selectedBottomButton],
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
