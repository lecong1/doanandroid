import 'package:flutter/material.dart';
import 'package:doan/models/modelSanPham.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<List<Product>> getAllSanPham(context) async {
  List responseList = [];
  final response = await http.get(
    Uri.parse('http://192.168.100.10:8000/api/products'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    },
  );
  if (response.statusCode == 200) {
    responseList = json.decode(response.body);
  }
  return responseList.map((data) => Product.fromJson(data)).toList();
}
