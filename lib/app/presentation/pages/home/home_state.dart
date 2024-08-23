import 'package:extension_types/core/types/types.dart';

class User {
  final Name name;
  final Email email;

  User({required this.name, required this.email});

  bool isValid() => name.isValid && email.isValid;

  User copyWith({
    Name? name,
    Email? email,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  @override
  String toString() => 'User(name: $name, email: $email)';
}
