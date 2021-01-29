import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ustart/constants.dart';

class Post extends StatelessWidget {
  String content;
  Image image;

  Post({@required this.content, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PostHeader(),
          SizedBox(height: 10),
          Text(
            content,
            style: kPostTextStyle,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Container(
            child: image,
            height: 166,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 36,
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.trending_up,
                    size: 35,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.grey.shade300,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.comment,
                    size: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Icon(
                    Icons.send,
                    size: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.bookmark_outline,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
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
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pradeep',
                style: kPostAccountTitleStyle,
              ),
              Text(
                'Works at Bevry',
                style: kPostAccountDescStyle,
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            '2 Hours ago',
            style: kPostTimeStyle,
          ),
          SizedBox(
            width: 10,
          ),
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
