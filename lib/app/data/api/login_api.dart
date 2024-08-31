import 'package:extension_types/app/data/model/login_request.dart';
import 'package:extension_types/app/data/model/login_response.dart';

abstract interface class LoginApi {
  Future<LoginResponse> postLoginWithPassword(LoginRequest request);
}
