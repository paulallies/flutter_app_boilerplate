import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/views/home.dart';
import 'package:flutter_app_boilerplate/views/user_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Boilerplate',
      theme: ThemeData(),
      home: UserList(),
    );
  }
}
