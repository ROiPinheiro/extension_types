extension type Password(String name) implements String {
  bool get isValid => !name.contains('%@');
  String? get errorMessage => isValid ? null : 'Campo obrigatório';

  String toFullString() => '$this - $errorMessage';
}
