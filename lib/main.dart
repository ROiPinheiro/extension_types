import 'package:extension_types/app/presentation/app/app.dart';
import 'package:extension_types/core/inject_dependencies.dart';
import 'package:flutter/material.dart';

void main() {
  injectDependencies();

  runApp(const MyApp());
}
