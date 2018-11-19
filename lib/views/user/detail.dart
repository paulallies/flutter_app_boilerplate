/*

a Widget to display the detail of the user
When the widget loads the user detail is pulled from the api and put
into the widgets state.

Once the local state of the user is updated, it will be saved to the 
 */
import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/models/User.dart';
import 'package:flutter_app_boilerplate/models/main_scope.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

// class UserDetail extends StatefulWidget {
//   @override
//   _UserDetailState createState() => new _UserDetailState();
// }

// class _UserDetailState extends State<UserDetail> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Container();
//   }
// }

class UserDetail extends StatelessWidget {
  UserDetail(this.user);
  final User user;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(builder: (context, child, model) {
      return Scaffold(
          appBar: AppBar(
            title: Text(user.first_name),
          ),
          body: Column(children: <Widget>[
            ListTile(
              leading: const Icon(Icons.person),
              title: TextField(
                onChanged: (name) {
                  model.changeName(name);
                },
                decoration: InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Phone",
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            const Divider(
              height: 1.0,
            ),
            ListTile(
              leading: const Icon(Icons.label),
              title: Text(model.name),
              subtitle: const Text('None'),
            ),
            ListTile(
              leading: const Icon(Icons.today),
              title: const Text('Birthday'),
              subtitle:
                  Text(DateFormat.yMMMd().format(DateTime.parse("2018-11-11"))),
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('Contact group'),
              subtitle: const Text('Not specified'),
            ),
            RaisedButton(
                child: Text("Press On"),
                onPressed: () {
                  model.changeName(model.name);
                })
          ]));
    });
  }
}
