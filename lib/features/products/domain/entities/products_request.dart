import 'package:flutter/material.dart';

class ProductsRequest {
  final String name;
  final double price;
  final int stock;
  final Image image;

  const ProductsRequest({
    required this.name,
    required this.price,
    required this.stock,
    required this.image,
  });
}
