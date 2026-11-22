import 'package:todo_crud/features/products/domain/entities/products.dart';
import 'package:todo_crud/features/products/domain/entities/products_request.dart';
import 'package:todo_crud/features/products/domain/repositories/product_repository.dart';

class CreateProduct {
  final ProductRepository repository;

  CreateProduct(this.repository);

  Future<Product> call(ProductRequest request) {
    return repository.createProduct(request);
  }
}
