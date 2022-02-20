import 'package:flutter/material.dart';
import 'package:doan/Repository/api.dart';
import 'package:doan/models/modelsanpham.dart';

class ProductProvider with ChangeNotifier {
  List<Product> products = [];
  bool loading = false;
  getProduct(context) async {
    loading = true;
    products = (await getAllSanPham()).cast<Product>();
    loading = false;

    notifyListeners();
  }
}
