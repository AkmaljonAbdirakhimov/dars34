class Product {
  final String title;
  final String image;
  final String description;

  Product({
    required this.description,
    required this.image,
    required this.title,
  });
}

class ProductsManager {
  List<Product> list = [
    Product(
      description: "Qui et proident sunt mollit reprehenderit.",
      image:
          "https://www.apple.com/newsroom/images/2023/09/apple-debuts-iphone-15-and-iphone-15-plus/article/Apple-iPhone-15-lineup-hero-230912_inline.jpg.large.jpg",
      title: "iPhone 15",
    ),
    Product(
      description: "Qui et proident sunt mollit reprehenderit.",
      image:
          "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/refurb-mbp13touchbar-performance-space-gallery-2020?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1591921674000",
      title: "Macbook",
    ),
    Product(
      description: "Qui et proident sunt mollit reprehenderit.",
      image:
          "https://media-cdn.tripadvisor.com/media/photo-s/0d/00/7d/5c/lamb-somsa.jpg",
      title: "Somsalar meni ye",
    ),
  ];
}
