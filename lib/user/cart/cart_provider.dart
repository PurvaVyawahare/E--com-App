import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _cartItems = [];
  final List<Map<String, dynamic>> _orders = [];

  List<Map<String, dynamic>> get cartItems => _cartItems;
  List<Map<String, dynamic>> get orders => _orders;

  double get totalPrice =>
      _cartItems.fold(0, (sum, item) => sum + (item["price"] as double));

  void addToCart(Map<String, dynamic> product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Map<String, dynamic> product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  /// Place an order with current cart items
  void placeOrder() {
    if (_cartItems.isNotEmpty) {
      _orders.add({
        "id": DateTime.now().millisecondsSinceEpoch,
        "items": List.from(_cartItems),
        "total": totalPrice,
        "date": DateTime.now(),
        "status": "Pending",
      });
      clearCart();
      notifyListeners();
    }
  }
}
