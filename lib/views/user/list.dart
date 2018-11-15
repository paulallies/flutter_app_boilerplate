import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/actions/user.dart';
import 'package:flutter_app_boilerplate/models/User.dart';
import 'package:flutter_app_boilerplate/views/user/detail.dart';
import 'package:flutter_app_boilerplate/widgets/app_drawer.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: UserActions.getUsers(),
      builder: (BuildContext context, AsyncSnapshot<List<User>> snap) {
        if (snap.hasData) {
          return ListView(
              children: snap.data
                  .map((b) => ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserDetail(b)));
                        },
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