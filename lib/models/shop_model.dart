import 'package:ecommerceapp/models/product.dart';
import 'package:flutter/material.dart';

class ShopModel extends ChangeNotifier {
  //product for sale
  final List<Product> _shop = [
    Product(
      name: "SB Dunk Low Pro",
      price: 99.99,
      description:
          "The Nike SB Dunk Low pairs iconic colour-blocking with premium materials and plush padding for game-changing comfort that lasts.",
      imagePath: 'lib/images/SBDUNKLOWPRO.png',
    ),

    Product(
      name: "Court Vision Low",
      price: 99.99,
      description:
          "In love with the retro look of '80s basketball,Meet the Court Vision Low. A classic remixed, its crisp upper and stitched overlays keep the soul of the original style.",
      imagePath: 'lib/images/COURTVISION.png',
    ),

    Product(
      name: "Air Force 1",
      price: 99.99,
      description:
          "The classic '80s construction is paired with pristine materials for style that tracks whether you're on court or on the go.",
      imagePath: 'lib/images/AIRFORCE1.png',
    ),

    Product(
      name: "Blazer Mid 77",
      price: 99.99,
      description:
          "In the '70s, Nike was the new shoe on the block.  The Nike Blazer Mid '77 Vintage—classic since the beginning.",
      imagePath: 'lib/images/BLAZERMID77.png',
    ),
  ];

  //user cart
  final List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
