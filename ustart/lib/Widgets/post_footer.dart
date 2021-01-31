import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostFooter extends StatelessWidget {
  PostFooter({
    @required this.like,
    @required this.save,
    @required this.liked,
    @required this.commented,
    @required this.send,
    @required this.saved,
  });

  final bool like;
  final bool save;
  final Function liked;
  final Function commented;
  final Function send;
  final Function saved;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Row(
        children: [
          PostIcon(
            selectedColor: like ? Colors.green : Colors.grey.shade200,
            icon: Icons.trending_up_rounded,
            onPress: liked,
          ),
          SizedBox(
            width: 10,
          ),
          PostIcon(
            selectedColor: null,
            icon: FontAwesomeIcons.comment,
            onPress: commented,
          ),
          SizedBox(
            width: 10,
          ),
          PostIcon(
            selectedColor: null,
            icon: Icons.send,
            onPress: send,
          ),
          Expanded(
            child: Container(),
          ),
          GestureDetector(
            onTap: saved,
            child: Icon(
              save ? Icons.bookmark : Icons.bookmark_outline,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class PostIcon extends StatelessWidget {
  PostIcon(
      {@required this.selectedColor,
      @required this.onPress,
      @required this.icon});

  final Color selectedColor;
  final Function onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Icon(
          icon,
          size: 35,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: selectedColor,
        ),
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      ),
    );
  }
}
