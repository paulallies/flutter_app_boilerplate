import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/models/UserPayload.dart';
import 'package:http/http.dart' as http;

class HttpButton extends StatelessWidget {
  var title;

  HttpButton({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
          child: const Text("Press Me"),
          color: Colors.blue,
          onPressed: () {
            http.get("https://reqres.in/api/users?page=2").then((res) {
              var userPayload = UserPayload.fromJson(json.decode(res.body));
              print(userPayload.data[0].first_name);
            });
          }),
    );
  }
}
