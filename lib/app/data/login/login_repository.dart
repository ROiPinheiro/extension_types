import 'package:extension_types/app/data/login/login_api.dart';
import 'package:extension_types/app/data/login/login_query.dart';
import 'package:extension_types/app/data/login/login_request.dart';
import 'package:extension_types/app/data/login/login_response.dart';
import 'package:extension_types/core/adapters/graphql_adapter.dart';

class LoginRepositoryImpl implements LoginApi {
  final GraphqlAdapter graphqlAdapter;

  LoginRepositoryImpl({required this.graphqlAdapter});

  @override
  Future<LoginResponse> postLoginWithPassword(LoginRequest request) async {
    const query = loginQuery;
    print(query);

    return LoginResponse.fromMap({
      'token': '',
      'refreshToken': '',
    });
  }
}
