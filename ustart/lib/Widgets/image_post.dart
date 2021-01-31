import 'package:flutter/material.dart';
import 'package:ustart/Widgets/post_footer.dart';
import 'package:ustart/constants.dart';
import 'package:ustart/Widgets/post_header.dart';

class ImagePost extends StatefulWidget {
  final String content;
  final Image image;

  ImagePost({@required this.content, @required this.image});

  @override
  _ImagePostState createState() => _ImagePostState();
}

class _ImagePostState extends State<ImagePost> {
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
            child: widget.image,
            height: 166,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
