

import 'package:todo_crud/features/products/domain/entities/products.dart';

class ProductsModel extends Product {
  const ProductsModel({
    required super.id,
    required super.name,
    required super.price,
    required super.stock,
    required super.image,
    super.createdAt,
    super.updatedAt,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      price: json['price'] ?? '',
      stock: json['stock'] ?? '',
      image: json['image'] ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.tryParse(json['createdAt']),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.tryParse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'price': price,
      'stock': stock,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }
}
