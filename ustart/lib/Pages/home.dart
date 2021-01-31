import 'package:flutter/material.dart';
import 'package:ustart/Widgets/idea_post.dart';
import 'package:ustart/Widgets/image_post.dart';
import 'package:ustart/Widgets/resource_post.dart';
import 'package:ustart/Widgets/story_bar.dart';
import 'package:ustart/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedBottomButton = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          StoryBar(),
          ImagePost(
            content:
                'My last day for this year holiday! So excited to share my memories with you guys! 😁😍',
            image: Image.network(
              'https://lh5.googleusercontent.com/iwQjX5DHDoV0xazg1RTbgk4MEpw6HPlySeUeyBrCMsmU2jwgruhn6FM9MxlQa7hrTLlsnMZ3xhxrsmSxoOxmrTwZoQKC3NqozzWn2MjUgUFw-8UsUPpcExmDNvfPphfKpmxTyhXk',
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 10),
          ResourcePost(
              content:
                  'Hello Connections, does someone know any label manufacturer that could our startup . we have to make labels for our rental scooters. We are located in Greater Noida. thanks'),
          SizedBox(height: 10),
          IdeaPost(
              content:
                  'Idea 21: What If there’s a platform for startups to seek and contribute resources to similar niche business.')
        ],
      ),
    );
  }
}
