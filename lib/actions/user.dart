import 'dart:convert';

import 'package:flutter_app_boilerplate/models/User.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app_boilerplate/config/Config.dart';
import 'package:localstorage/localstorage.dart';

class UserActions {
  static Future<List<User>> getUsers() async {
    var res = await http.get(Config.APIBase + "/user");
    var jsonBody = json.decode(res.body);
    var userPayload = (jsonBody as List)
        .map<User>((json) => new User.fromJson(json))
        .toList();
    return userPayload;
  }

  static Future authenticate(String username, String password) async {
    var storage = new LocalStorage('app');
    var basicAuth = 'Basic ' + base64Encode(utf8.encode(Config.APIBasicAuth));
    var body = {"email": username, "password": password};
    var res = await http.post(Config.APIBase2 + "/auth",
        headers: {'authorization': basicAuth}, body: body);
    var jwt = json.decode(res.body)["token"];
    storage.setItem('jwt', jwt);
    return true;
  }

  static Future createUser(User user) async {
    var res =
        await http.post(Config.APIBase + "/user", body: json.encode(user));
    print(res.body);
    print(res.statusCode);
  }
}
