import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:food_tracker/model/user_model/user_model.dart';
import 'package:food_tracker/model/user_model/firebase_auth.dart';
import 'package:provider/provider.dart';

enum Status {
  Uninitialized,
  Authenticated,
  Authenticating,
  Unauthenticated,
  Registering
}

class UserViewModel extends ChangeNotifier {
  AuthProvider auth = AuthProvider();

  bool _userlogged = false;

  get userLogged => _userlogged;

  //Default status
  Status _status = Status.Uninitialized;

  Status get status => _status;

  //Stream<UserModel> get user => _auth.authStateChanges().map(_userFromFirebase);

  sigmImWithEmailPassword(String email, String password) async {
    var authh = await auth.signInWithEmailAndPassword(email, password);
    _userlogged = authh as bool;

    notifyListeners();
  }
}
