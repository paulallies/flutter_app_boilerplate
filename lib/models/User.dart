class User {
  final int id;
  final String first_name;
  final String last_name;

  User({this.id, this.first_name, this.last_name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      first_name: json['first_name'],
      last_name: json['body'],
    );
  }
}
