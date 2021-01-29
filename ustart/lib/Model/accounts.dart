import 'package:flutter/material.dart';

class Account {
  String name;
  String email;
  AccountType accountType;

  Account({@required this.name, @required this.accountType});
}

enum AccountType { investor, individual, startup }
