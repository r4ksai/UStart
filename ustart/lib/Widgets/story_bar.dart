import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ustart/constants.dart';

class StoryBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [kPeopleColor, Colors.white.withOpacity(0)]),
              color: kPeopleColor,
            ),
            width: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: kPeopleColor,
                      borderRadius: BorderRadius.circular(5)),
                  height: 30,
                  child: Text(
                    'People',
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kInvestorColor,
            ),
            width: 160,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kStartupColor,
            ),
            width: 160,
          )
        ],
      ),
    );
  }
}
