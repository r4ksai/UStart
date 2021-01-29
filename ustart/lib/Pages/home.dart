import 'package:flutter/material.dart';
import 'package:ustart/Widgets/bottom_navigator.dart';
import 'package:ustart/Widgets/post.dart';

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
        body: Post(
          content: 'Something Random',
          image: Image.network(
            'https://lh5.googleusercontent.com/iwQjX5DHDoV0xazg1RTbgk4MEpw6HPlySeUeyBrCMsmU2jwgruhn6FM9MxlQa7hrTLlsnMZ3xhxrsmSxoOxmrTwZoQKC3NqozzWn2MjUgUFw-8UsUPpcExmDNvfPphfKpmxTyhXk',
            fit: BoxFit.fitWidth,
          ),
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
