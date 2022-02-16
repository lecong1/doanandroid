import 'package:flutter/material.dart';
import 'dart:convert';

class Product extends ChangeNotifier {
  int id;
  String name;
  String images;
  int price;
  int stock;
  int status;
  String description;
  int productDetailId;
  int productTypeId;
  // List<int> size;

  Product({
    required this.id,
    required this.images,
    required this.name,
    required this.price,
    required this.stock,
    required this.status,
    required this.description,
    required this.productDetailId,
    required this.productTypeId,
    // required this.size,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        images: json['imgpath'],
        stock: json['stock'],
        status: json['status'],
        description: json['description'],
        productTypeId: json['producttypeid'],
        productDetailId: json['productdetailid'],
        // size: json['size'].cast<int>(),
      );
}
