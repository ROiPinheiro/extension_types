import 'package:flutter/material.dart';
import 'package:extension_types/app/presentation/pages/home/home_controller.dart';
import 'package:extension_types/core/injector.dart';

class HomeForm extends StatelessWidget {
  HomeForm({super.key});

  final HomeController homeController = injector.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListenableBuilder(
          listenable: homeController,
          builder: (context, _) {
            return TextFormField(
              onChanged: homeController.updateName,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: const Text('Name'),
                errorText: homeController.user.name.errorMessage,
              ),
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        ListenableBuilder(
          listenable: homeController,
          builder: (context, _) {
            return TextFormField(
              onChanged: homeController.updateEmail,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: const Text('E-mail'),
                errorText: homeController.user.email.errorMessage,
              ),
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        FilledButton(
          onPressed: homeController.submit,
          child: const Text('Submit'),
        ),
        ListenableBuilder(
          listenable: homeController,
          builder: (context, _) {
            return Visibility(
              visible: homeController.isSuccess,
              child: const Text('Sucesso'),
            );
          },
        )
      ],
    );
  }
}
