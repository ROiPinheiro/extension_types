import 'package:extension_types/core/injector.dart';
import 'package:extension_types/core/main_dependencies.dart';

void injectDependencies() {
  injectMainDependencies();

  injector.commit();
}
