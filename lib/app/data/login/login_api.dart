import 'package:extension_types/app/data/login/login_request.dart';
import 'package:extension_types/app/data/login/login_response.dart';

abstract interface class LoginApi {
  Future<LoginResponse> postLoginWithPassword(LoginRequest request);
}
