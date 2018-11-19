import 'package:scoped_model/scoped_model.dart';

class MainModel extends Model {
  String _name = "";
  String get name => _name;
  void changeName(name) {
    print(name);
    this._name = name;
    notifyListeners();
  }
}
