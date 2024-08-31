import 'package:extension_types/app/domain/types/email.dart';

class LoginRequest {
  final Email email;
  final String password;

  LoginRequest({
    required this.email,
    required this.password,
  });
}
