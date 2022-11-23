import 'package:flutter/material.dart';

import '../models/user_model.dart';

class UserProvider with ChangeNotifier {
  //make shared state
  UserModel _user;

  //getter for _user
  UserModel get user => _user;

  //setter for _user
  set user(UserModel newUser) {
    _user = newUser;

    notifyListeners();
    ;
  }
}
