class ProductModel {
  final int id;
  final String title;
  final num itemPrice;
  final num Peritemprice;
  final String image;
  final List reviews;
  final String description;
  final bool isAvailabe;

  ProductModel(
      {this.title,
       this.image,
       this.id,
       this.description,
       this.isAvailabe,
      this.itemPrice,
       this.Peritemprice,
       this.reviews});
}
