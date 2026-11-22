import 'package:todo_crud/features/products/domain/entities/products.dart';
import 'package:todo_crud/features/products/domain/repositories/product_repository.dart';

class DeleteProduct {
  final ProductRepository repository;

  DeleteProduct(this.repository);

  Future<Product> call(String id) {
    return repository.deleteProduct(id);
  }
}
