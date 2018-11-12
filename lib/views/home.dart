import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/models/main_scope.dart';

myHomePage(title) => Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(title),
            RaisedButton(
              child: const Text("Press Me"),
              onPressed: () {
                AlertDialog(
                  content: Text("testing"),
                );
              },
            )
          ],
        ),
      ),
    );
