import 'package:doan/models/modelsanpham.dart';
import 'package:flutter/material.dart';
import 'package:doan/models/cart.dart';

class ProviderCart with ChangeNotifier {
  List<cart> _carts = [];
  List<cart> get carts => _carts;
  Future<void> fetchData() async {
    List<cart> carts = await [];
    _carts = carts;
  }

  void removeAllCart() {
    _carts = [];
    notifyListeners();
  }

  void addProduct(Product products) {
    _carts.add(
      cart(
        product: products,
        quanity: 1,
      ),
    );
    notifyListeners();
  }
}
