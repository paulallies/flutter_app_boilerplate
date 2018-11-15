import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/models/User.dart';

class UserDetail extends StatelessWidget {
  UserDetail(this.user);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(user.first_name),
    ));
  }
}
