void outer(String name, String id) {
  final parts = name.trim().split(RegExp(r'\s+'));
  final firstName = parts.isNotEmpty ? parts[0] : '';
  final lastName = parts.length > 1 ? parts[1] : '';

  String inner() {
    final lastInitial = lastName.isNotEmpty ? lastName[0] : '';
    return 'Hello Agent $lastInitial.$firstName your id is $id';
  }

  print(inner());
}
