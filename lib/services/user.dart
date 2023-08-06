
import 'dart:async';

import 'package:state_management/models/models.dart';

class _UserService {

  User? _user;
  final StreamController<User?> _userStreamCtrl = StreamController<User?>.broadcast();

  User? get user => _user;
  bool get userExists => (_user != null) ? true : false;
  Stream<User?> get userStream => _userStreamCtrl.stream;

  void setUser(User user) {
    _user = user;
    _userStreamCtrl.add(user);
  }

  void updateAge(int age) {
    _user?.age = age;
    _userStreamCtrl.add(_user);
  }

  dispose() {
    _userStreamCtrl.close();
  }

}

final userService = _UserService();
