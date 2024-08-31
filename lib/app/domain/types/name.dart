extension type Name(String name) implements String {
  bool get isValid => name.isNotEmpty;
  String? get errorMessage => isValid ? null : 'Campo obrigatório';

  String toFullString() => '$this - $errorMessage';
}
