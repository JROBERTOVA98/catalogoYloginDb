import 'package:flutter/material.dart';

enum Category {
  todos,
  labios,
  ojos,
  rostro,
  manos,
  brochas,
  esponjas,
  cosmetiquera
}

class Product {
  const Product({
    required this.category,
    required this.image,
    required this.isFeatured,
    required this.name,
    required this.price,
  });

  final Category category;
  final Image image;
  final bool isFeatured;
  final String name;
  final int price;
}
