import 'package:flutter/material.dart';
import 'package:ustart/Pages/bottom_navigator_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabbedNavigationController();
  }
}
