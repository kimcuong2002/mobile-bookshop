import 'package:flutter/foundation.dart' show ChangeNotifier, required;

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String auth;
  bool isFavorite;
  bool isStar;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.auth,
    this.isFavorite = false,
    this.isStar = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
