import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  _gotoPage(String route, BuildContext context) {
    Navigator.of(context).pushReplacementNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('List View'),
            onTap: () {
              // change app state...
              _gotoPage("/datalist", context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Image Picker'),
            onTap: () {
              // change app state...
              _gotoPage("/imagepicker", context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Gradient Background'),
            onTap: () {
              // change app state...
              _gotoPage("/gradientback", context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Login'),
            onTap: () {
              // change app state...
              _gotoPage("/login", context);
            },
          ),
          Divider(),
        ],
      ),
    ));
  }
}
