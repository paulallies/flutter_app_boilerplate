import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/models/main_scope.dart';
import 'package:flutter_app_boilerplate/views/account/login.dart';
import 'package:flutter_app_boilerplate/views/imagepicker.dart';
import 'package:flutter_app_boilerplate/views/user/list.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: MainModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Sample App',
        theme: ThemeData(),
        home: UserList(),
        routes: <String, WidgetBuilder>{
          "/datalist": (BuildContext context) => UserList(),
          "/imagepicker": (BuildContext context) => ImagePicker(),
          "/login": (BuildContext context) => Login(),
        },
      ),
    );
  }
}
