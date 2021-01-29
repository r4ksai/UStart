import 'package:flutter/material.dart';
import 'package:ustart/Model/accounts.dart';

class Comments {
  Account account;
  String content;
  List<Account> likes;
  List<Comments> replies;
  Comments({@required this.account, @required this.content});

  void addLike(liker) {
    likes.add(liker);
  }

  void addReply(reply) {
    replies.add(reply);
  }
}
