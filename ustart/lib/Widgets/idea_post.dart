import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ustart/constants.dart';
import 'package:ustart/Widgets/post_footer.dart';
import 'package:ustart/Widgets/post_header.dart';

class IdeaPost extends StatefulWidget {
  final String content;
  final String message = "Will This Idea Work ? ";

  IdeaPost({@required this.content});

  @override
  _IdeaPostState createState() => _IdeaPostState();
}

class _IdeaPostState extends State<IdeaPost> {
  bool _liked = false;
  bool _saved = false;

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
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                color: Colors.yellow,
                child: Row(
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text('I have an Idea !')
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            widget.content,
            style: kPostTextStyle,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.comment),
                SizedBox(width: 10),
                Text(
                  widget.message,
                  style: kPostQuestionTextStyle,
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(height: 10),
          PostFooter(
            like: _liked,
            save: _saved,
            liked: () {
              setState(
                () {
                  _liked = !_liked;
                  //TODO : Add Liking function here !
                },
              );
            },
            saved: () {
              setState(
                () {
                  _saved = !_saved;
                  //TODO : Add Bookmarking function here !
                },
              );
            },
            send: () {
              //TODO : Add sending function here !
            },
            commented: () {
              //TODO : Add Commenting function here !
            },
          ),
        ],
      ),
    );
  }
}
