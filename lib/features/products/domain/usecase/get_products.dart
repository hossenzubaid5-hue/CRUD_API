import 'package:todo_crud/features/products/domain/entities/products_page.dart';

import '../repositories/product_repository.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<ProductsPage> call({required int page, required int limit}) {
    return repository.getProducts(page: page, limit: limit);
  }
}
