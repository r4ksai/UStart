import 'package:flutter/material.dart';
import 'package:ustart/Model/accounts.dart';

class Posts {
  Account account;
  String content;
  Image image;
  List<Account> likes;
  List<String> comments;

  Posts({@required this.account, @required this.content});
}
