import 'package:flutter/material.dart';
import 'package:ustart/constants.dart';

class BottomNavigator extends StatelessWidget {
  final double _iconSize = 30.0;
  final double _addSize = 35.0;
  final Color _activeColor = Colors.black;
  final Color _inactiveColor = Colors.grey;

  final Function onPress;
  final int activeButton;
  BottomNavigator({@required this.onPress, @required this.activeButton});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: _activeColor,
      unselectedItemColor: _inactiveColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: _iconSize,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              size: _iconSize,
            ),
            label: "Notifications"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: _addSize,
            ),
            label: "Add"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.handyman_outlined,
              size: _iconSize,
            ),
            label: "Jobs"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              size: _iconSize,
            ),
            label: "Account"),
      ],
      onTap: onPress,
      currentIndex: activeButton,
    );
  }
}
