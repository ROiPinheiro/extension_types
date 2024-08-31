import 'package:extension_types/app/data/login/login_api.dart';
import 'package:extension_types/app/data/login/login_repository.dart';
import 'package:extension_types/app/domain/use_case/login.dart';
import 'package:extension_types/app/presentation/page/home/home_controller.dart';
import 'package:extension_types/core/adapters/graphql_adapter.dart';
import 'package:extension_types/core/injector.dart';

void injectMainDependencies() {
  injector.addLazySingleton<GraphqlAdapter>(GraphqlAdapter.new);
  injector.addLazySingleton<LoginApi>(LoginRepositoryImpl.new);
  injector.addLazySingleton<LoginUseCase>(Login.new);
  injector.addLazySingleton<HomeController>(HomeController.new);
}
