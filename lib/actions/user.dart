import 'dart:convert';

import 'package:flutter_app_boilerplate/models/User.dart';
import 'package:flutter_app_boilerplate/models/UserPayload.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app_boilerplate/config/Config.dart';

class UserActions {
  static Future<List<User>> getUsers() async {
    var res = await http.get(Config.APIBase + "/user");
    var jsonBody = json.decode(res.body);
    var userPayload = (jsonBody as List)
        .map<User>((json) => new User.fromJson(json))
        .toList();
    return userPayload;
  }

  static Future createUser(User user) async {
    var res =
        await http.post(Config.APIBase + "/user", body: json.encode(user));
    print(res.body);
    print(res.statusCode);
  }
}
