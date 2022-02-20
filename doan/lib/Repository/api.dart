import 'dart:html';

import 'package:doan/models/modelccount.dart';
import 'package:flutter/material.dart';
import 'package:doan/models/modelSanPham.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<List<Product>> getAllSanPham() async {
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

Future<ModelAccount> loginApp(email, password) async {
  ModelAccount resultAccount = ModelAccount();
  try {
    final respone = await http.post(
      //
      Uri.parse('http://192.168.100.10:8000/api/accounts/login'),
    );
    // headers: {
    //   HttpHeaders.contentTypeHeader: "application/json",
    // },
    // body:
    //     jsonEncode(<String, String>{'email': email, 'password': password}));

    if (respone.statusCode == 200) {
      final item = json.decode(respone.body);
      resultAccount = ModelAccount.fromJson(item);
    }
  } catch (e) {
    rethrow;
  }
  return resultAccount;
}

Future<ModelAccount> registerApp(
    username, password, fullname, email, phone, address) async {
  ModelAccount resultAccount = ModelAccount();
  try {
    final respone = await http.post(
        //
        Uri.parse(
            'http://192.168.100.10:8000/api/accounts/login?email=lecong&password=123456'),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'password': password,
          'fullname': fullname,
          'email': email,
          'phone': phone,
          'address': address
        }));

    if (respone.statusCode == 200) {
      final item = json.decode(respone.body);
      resultAccount = ModelAccount.fromJson(item);
    }
  } catch (e) {
    rethrow;
  }
  return resultAccount;
}
