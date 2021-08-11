class Contact {
  final String name;
  final String photo;
  final String email;
  final String phone;
  bool isFavorite;

  Contact({
    required this.name,
    required this.photo,
    required this.email,
    required this.phone,
    this.isFavorite = false,
  });
}
