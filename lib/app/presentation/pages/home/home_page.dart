import 'package:flutter/material.dart';
import 'package:extension_types/app/presentation/pages/home/home_controller.dart';
import 'package:extension_types/app/presentation/pages/home/widgets/home_form.dart';

import 'package:extension_types/core/injector.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = injector.get<HomeController>();

  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeForm(),
            ],
          ),
        ),
      ),
    );
  }
}
