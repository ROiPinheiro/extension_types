import 'package:extension_types/app/domain/types/email.dart';
import 'package:extension_types/app/domain/types/name.dart';
import 'package:extension_types/app/domain/use_case/login.dart';
import 'package:extension_types/app/presentation/page/home/home_state.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool isSuccess = false;
  User user = User();

  final LoginUseCase loginUseCase;

  HomeController({
    required this.loginUseCase,
  });

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

  void updateUser() {
    user = User(
      name: Name(user.name ?? ''),
      email: Email(user.email ?? ''),
    );
    notifyListeners();
  }

  void submit() {
    if (user.isValid()) {
      loginUseCase();
      return;
    }
    updateUser();
    print(user.isValid());
    return;
  }
}
