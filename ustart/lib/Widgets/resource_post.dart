import 'package:flutter/material.dart';
import 'package:ustart/constants.dart';
import 'package:ustart/Widgets/post_footer.dart';
import 'package:ustart/Widgets/post_header.dart';

class ResourcePost extends StatefulWidget {
  final String content;
  final String message = "Recommend Someone You Know";

  ResourcePost({@required this.content});

  @override
  _ResourcePostState createState() => _ResourcePostState();
}

class _ResourcePostState extends State<ResourcePost> {
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
                Icon(Icons.person_add_alt),
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
