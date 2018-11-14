import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/models/main_scope.dart';
import 'package:flutter_app_boilerplate/widgets/alert_button.dart';
import 'package:flutter_app_boilerplate/widgets/http_button.dart';

class Home extends StatelessWidget {
  Home(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFb74093),
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(title),
            HttpButton(title: "Fetch Data"),
            // AlertButton(
            //   title: "title",
            //   content: "Content",
            // ),
          ],
        ),
      ),
    );
  }
}
