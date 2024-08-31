import 'package:extension_types/app/data/login/login_api.dart';
import 'package:extension_types/app/data/login/login_request.dart';
import 'package:extension_types/app/domain/model/user_model.dart';
import 'package:extension_types/app/domain/types/email.dart';

abstract class LoginUseCase {
  Future<UserModel> call();
}

class Login implements LoginUseCase {
  final LoginApi loginRepository;

  Login({required this.loginRepository});

  @override
  Future<UserModel> call() async {
    final LoginRequest request = LoginRequest(
      email: Email(''),
      password: '',
    );
    final response = await loginRepository.postLoginWithPassword(request);

    return response.toUser();
  }
}
