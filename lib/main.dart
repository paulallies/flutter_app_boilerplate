import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/views/imagepicker.dart';
import 'package:flutter_app_boilerplate/views/user/detail.dart';
import 'package:flutter_app_boilerplate/views/user/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Boilerplate',
      theme: ThemeData(),
      home: UserList(),
      routes: <String, WidgetBuilder>{
        "/datalist": (BuildContext context) => new UserList(),
        "/imagepicker": (BuildContext context) => new ImagePicker(),
      },
    );
  }
}
