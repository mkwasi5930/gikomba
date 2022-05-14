
class Product {
  final String name;
  final String description;
  final int price;
  final String image;

  Product(this.name, this.description, this.price, this.image);

  static List<Product> getproduct() {
    List<Product> items = <Product>[];

    items.add(Product(
        "men woods", "best woods during the winter season", 450, "woods.jpg"));
    items.add(Product("shirts", "most worn shirts", 300, "roundshirts.jpg"));
    items.add(Product(
        "cropTop",
        "This are girls wear, esspecially worn by hot girls.",
        200,
        "cropTop.jpg"));
    items.add(Product(
        "Men Trousers",
        "This are boys wear, are the one in fashion  worn by swag boys.",
        800,
        "Men Trousers.jpg"));
    items.add(Product(
        "Men and Women shorts",
        "This are boys and girls wear , are the one in fashion  worn by swag boys and girls.",
        250,
        "Shorts.jpg"));
    items.add(Product(
        "Women Trousers",
        "This are women wear, are the one in fashion  worn by classic women.",
        600,
        "WomenTrouser.jpg"));
    items.add(Product(
        "Men Shoes",
        "This are men wear are the one in fashion.Include all types of shoes one may admire.",
        2500,
        "Menshoes.jpg"));
    return items;
  }

}
