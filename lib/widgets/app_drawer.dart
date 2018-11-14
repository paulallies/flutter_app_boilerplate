import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  _gotoPage(String route, BuildContext context) {
    Navigator.of(context).pushReplacementNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.home),
            title: new Text('List View'),
            onTap: () {
              // change app state...
              _gotoPage("/datalist", context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.info),
            title: new Text('Image Picker'),
            onTap: () {
              // change app state...
              _gotoPage("/imagepicker", context);
            },
          ),
        ],
      ),
    );
  }
}
