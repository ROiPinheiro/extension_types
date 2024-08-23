import 'package:extension_types/app/presentation/pages/home/home_controller.dart';
import 'package:extension_types/core/injector.dart';

void injectMainDependencies() {
  injector.addLazySingleton(HomeController.new);
}
