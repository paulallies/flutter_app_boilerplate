import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/views/home.dart';

void main() => runApp(myApp());

myApp() => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: myHomePage("testing"),
    );
