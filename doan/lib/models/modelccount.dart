import 'package:flutter/material.dart';
import 'dart:convert';

class ModelAccount extends ChangeNotifier {
  int? id;
  String? username;
  String? password;
  int? email;
  int? diachi;
  int? sdt;
  // List<int> size;

  ModelAccount({
    this.id,
    this.username,
    this.password,
    this.email,
    this.diachi,
    this.sdt,
  });

  factory ModelAccount.fromJson(Map<String, dynamic> json) => ModelAccount(
        id: json['id'],
        username: json['username'],
        password: json['password'],
        email: json['email'],
        diachi: json['diachi'],
        sdt: json['sdt'],
      );
}
