import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/models/User.dart';
import 'package:flutter_app_boilerplate/models/UserPayload.dart';
import 'package:flutter_app_boilerplate/widgets/app_drawer.dart';
import 'package:http/http.dart' as http;

class UserList extends StatelessWidget {
  Future<List<User>> getData() async {
    var res = await http.get("https://reqres.in/api/users?page=2");
    var userPayload = UserPayload.fromJson(json.decode(res.body));

    return userPayload.data;
  }

  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: this.getData(),
      builder: (BuildContext context, AsyncSnapshot<List<User>> snap) {
        if (snap.hasData) {
          return ListView(
              children: snap.data
                  .map((b) => ListTile(
                        onTap: () {},
                        title: Text(b.first_name),
                      ))
                  .toList());
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );

    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xFFb74093),
          title: Text("List"),
        ),
        body: futureBuilder);
  }
}
