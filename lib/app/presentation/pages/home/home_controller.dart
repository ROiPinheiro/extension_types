import 'package:flutter/material.dart';
import 'package:extension_types/app/presentation/pages/home/home_state.dart';
import 'package:extension_types/core/types/types.dart';

class HomeController extends ChangeNotifier {
  bool isSuccess = false;
  User user = User(
    name: Name(''),
    email: Email(''),
  );

  HomeController();

  void updateName(String value) {
    user = user.copyWith(name: Name(value));
    isSuccess = user.isValid();
    notifyListeners();
  }

  void updateEmail(String value) {
    user = user.copyWith(email: Email(value));
    isSuccess = user.isValid();
    notifyListeners();
  }

  void submit() {
    print(user.toString());
    print(user.email.toFullString());
    print(user.name.runtimeType);
    print(user.email.runtimeType);
  }
}
