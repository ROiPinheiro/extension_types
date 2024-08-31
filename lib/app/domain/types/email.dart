extension type Email(String email) implements String {
  bool get isValid => email.contains('@test.com');

  String? get errorMessage {
    if (isEmpty) return 'Campo obrigatório';
    if (!isValid) return 'Email inválido';
    return null;
  }

  String toFullString() => '$this - $errorMessage';
}
