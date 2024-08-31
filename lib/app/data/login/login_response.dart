import 'package:extension_types/app/domain/model/user_model.dart';

class LoginResponse {
  final String token;
  final String refreshToken;

  LoginResponse({
    required this.token,
    required this.refreshToken,
  });

  LoginResponse copyWith({
    String? token,
    String? refreshToken,
  }) {
    return LoginResponse(
      token: token ?? this.token,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      token: map['token'] ?? '',
      refreshToken: map['refreshToken'] ?? '',
    );
  }

  UserModel toUser() => UserModel();
}
