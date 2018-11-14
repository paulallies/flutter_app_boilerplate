import 'package:flutter_app_boilerplate/models/User.dart';

class UserPayload {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<User> data;

  UserPayload(
      {this.page, this.perPage, this.total, this.totalPages, this.data});

  factory UserPayload.fromJson(Map<String, dynamic> json) {
    return UserPayload(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        data: (json["data"] as List)
            .map<User>((json) => new User.fromJson(json))
            .toList());
  }
}
