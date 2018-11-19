/* 
a Widget that lists users
when pressing on a list item will navigate to the UserDetail widget
*/
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
            
              children: snap.data.map((b) {
            return Column(
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserDetail(b)));
                  },
                  title: Text(b.first_name ?? ""),
                ),
                Divider()
              ],
            );
          }).toList());
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text("User List"),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserDetail(null)));
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: futureBuilder);
  }
}
