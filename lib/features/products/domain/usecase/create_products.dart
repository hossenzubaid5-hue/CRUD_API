import 'package:todo_crud/features/products/domain/entities/products.dart';
import 'package:todo_crud/features/products/domain/entities/products_request.dart';
import 'package:todo_crud/features/products/domain/repositories/product_repository.dart';

class CreateProducts {
  final ProductRepository repository;

  CreateProducts(this.repository);

  Future<Product> call(ProductsRequest request) {
    return repository.createProduct(request);
  }
}
