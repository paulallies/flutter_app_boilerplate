/* 
a Widget that lists users
when pressing on a list item will navigate to the UserDetail widget
*/
import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/actions/user.dart';
import 'package:flutter_app_boilerplate/models/User.dart';
import 'package:flutter_app_boilerplate/views/user/detail.dart';
import 'package:flutter_app_boilerplate/views/user/new_user.dart';
import 'package:flutter_app_boilerplate/widgets/app_drawer.dart';
import 'package:flutter/scheduler.dart';
import 'package:localstorage/localstorage.dart';

class UserList extends StatefulWidget {
  @override
  UserListState createState() {
    return new UserListState();
  }
}

class UserListState extends State<UserList> {
  @override
  void initState() {
    super.initState();
    var storage = new LocalStorage('app');
    var jwt = storage.getItem('jwt');
    print(jwt);
    // if (jwt) {
    // } else {
    //   SchedulerBinding.instance.addPostFrameCallback((_) {
    //     Navigator.of(context).pushReplacementNamed("/login");
    //   });
    // }
    // Navigator.of(context).pushNamed("/login");
    //  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: UserActions.getUsers(), //make api call for users
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
                    MaterialPageRoute(builder: (context) => UserNew()));
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: futureBuilder);
  }
}
