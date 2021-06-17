class Product {

  final int id;
  final String title;
  final num itemPrice;
  final num Peritemprice;
  final String image;
  final List reviews;
  final String description;
  final bool isAvailabe;

  Product(
      {required this.title, required this.image, required this.id, required this.description, required this.isAvailabe, required this.itemPrice, required this.Peritemprice, required this.reviews});

}