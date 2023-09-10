
import 'package:flutter/material.dart';
import 'package:state_management/models/models.dart';

class UserService extends ChangeNotifier {

  late User? _user;

  User? get user => _user;

  bool get existsUser => _user != null ? true : false;

  set user(User user) {
    _user = user;
    notifyListeners();
  }

  void changeAge( int age ) {
    _user?.age = age;
    notifyListeners();
  }

  void addProfession() {
    _user?.professions.add('Profesion ${_user!.professions.length + 1}');
    notifyListeners();
  }

  void removeUser() {
	  _user = null;
    notifyListeners();
  }

}