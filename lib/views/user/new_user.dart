import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/models/main_scope.dart';
import 'package:scoped_model/scoped_model.dart';

class UserNew extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<UserNew> {
  var nameController = TextEditingController();
  var surnameController = TextEditingController();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(builder: (context, child, model) {
      return Scaffold(
        appBar: AppBar(
          title: Text("New User"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {
                print(emailController.text);
                print(surnameController.text);
                print(nameController.text);
              },
            )
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextField(
                    decoration: InputDecoration(hintText: "First Name"),
                    controller: nameController,
                    onChanged: (v) => nameController.text = v,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextField(
                    decoration: InputDecoration(hintText: "Surname"),
                    controller: surnameController,
                    onChanged: (v) => surnameController.text = v,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: "Email Address"),
                    controller: emailController,
                    onChanged: (v) => emailController.text = v,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
