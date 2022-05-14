import 'package:flutter/widgets.dart';
import 'package:industry/models/product.dart';

class Cart with ChangeNotifier{
  static List<Product> product1 = [];

  double get total {
    return product1.fold(0.0, (double currentTotal, Product nextProduct) {
      return currentTotal + nextProduct.price;
    });
  }

  void addToCart(Product product) => product1.add(product);
  void removeFromCart(Product product) {
    product1.remove(product);
    notifyListeners();
  }
}


