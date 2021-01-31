import 'package:flutter/material.dart';
import 'package:ustart/constants.dart';

class PostHeader extends StatelessWidget {
  final String name = 'Pradeep';
  final String title = 'Works at Bevry';
  final String time = '2 Hours ago';

  PostHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.0, // Height of the Title Bar
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: kPostAccountTitleStyle,
              ),
              Text(
                title,
                style: kPostAccountDescStyle,
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            time,
            style: kPostTimeStyle,
          ),
          SizedBox(width: 10),
          Icon(Icons.more_vert)
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.center,
          colors: [
            kPeopleColor,
            Colors.white.withOpacity(0),
          ],
        ),
      ),
    );
  }
}
