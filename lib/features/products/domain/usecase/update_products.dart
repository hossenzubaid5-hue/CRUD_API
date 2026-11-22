import 'package:todo_crud/features/products/domain/entities/products.dart';
import 'package:todo_crud/features/products/domain/entities/products_request.dart';
import 'package:todo_crud/features/products/domain/repositories/product_repository.dart';

class UpdateProduct {
  final ProductRepository repository;

  UpdateProduct(this.repository);

  Future<Product> call(String id, ProductRequest request) {
    return repository.updateProduct(id, request);
  }
}
