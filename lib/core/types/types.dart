extension type Name(String name) implements String {
  bool get isValid => name.isNotEmpty;
  String? get errorMessage => isValid ? null : 'Campo obrigatório';

  String toFullString() => '$this - $errorMessage';
}

extension type Email(String email) implements String {
  bool get isValid => email.contains('@test.com');

  String? get errorMessage {
    if (isEmpty) return 'Campo obrigatório';
    if (!isValid) return 'Email inválido';
    return null;
  }

  String toFullString() => '$this - $errorMessage';
}
