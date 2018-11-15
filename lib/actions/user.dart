import 'dart:convert';

import 'package:flutter_app_boilerplate/models/User.dart';
import 'package:flutter_app_boilerplate/models/UserPayload.dart';
import 'package:http/http.dart' as http;

class UserActions {
  static Future<List<User>> getUsers() async {
    var res = await http.get("https://reqres.in/api/users?page=2");
    var userPayload = UserPayload.fromJson(json.decode(res.body));

    return userPayload.data;
  }
}
