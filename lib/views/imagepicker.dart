import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/widgets/app_drawer.dart';

class ImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text("Image Picker"),
        ),
        body: Center(child: Text("Image Picker")));
  }
}
