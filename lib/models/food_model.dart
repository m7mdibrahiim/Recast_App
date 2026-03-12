class Food {
  final String name;
  final String price;
  final String image;
  final bool trending;
  final String? description;

  Food({
    required this.name,
    required this.price,
    required this.image,
    this.trending = false,
    this.description,
  });
}
