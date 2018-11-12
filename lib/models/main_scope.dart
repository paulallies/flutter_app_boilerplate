import 'package:scoped_model/scoped_model.dart';

class MainModel extends Model {
  String _name = "";
  void changeName(name) {
    this._name = name;
    notifyListeners();
  }
}
