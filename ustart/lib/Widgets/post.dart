import 'package:flutter/material.dart';
import 'package:ustart/constants.dart';

class Post extends StatelessWidget {
  String content;
  Image image;

  Post({@required this.content, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
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
                  Icon(Icons.menu)
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.center,
                  colors: [
                    kInvestorColor,
                    Colors.white.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            content,
            style: kPostTextStyle,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Container(
            child: image,
            height: 200,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_upward_outlined,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.comment_outlined,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.reply_outlined,
                    size: 40,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(
                    Icons.bookmark_outline,
                    size: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
