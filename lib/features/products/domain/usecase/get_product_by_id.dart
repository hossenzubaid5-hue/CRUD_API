import 'package:todo_crud/features/products/domain/entities/products.dart';
import 'package:todo_crud/features/products/domain/repositories/product_repository.dart';

class GetProductById {
  final ProductRepository repository;

  GetProductById(this.repository);

  Future<Product> call(String id) {
    return repository.getProductById(id);
  }
}
