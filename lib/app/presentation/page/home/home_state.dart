import 'package:extension_types/app/domain/types/email.dart';
import 'package:extension_types/app/domain/types/name.dart';

class User {
  final Name? name;
  final Email? email;

  User({this.name, this.email});

  bool isValid() => (name?.isValid ?? false) && (email?.isValid ?? false);

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
