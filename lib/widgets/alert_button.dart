import 'package:flutter/material.dart';

class AlertButton extends StatelessWidget {
  AlertButton({this.title, this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
          child: const Text("Press Me"),
          color: Colors.blue,
          onPressed: () {
            showAlert(context, this.title, this.content);
          }),
    );
  }
}

showAlert(context, title, content) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            FlatButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        );
      });
}
