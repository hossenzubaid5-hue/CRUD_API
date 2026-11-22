import 'package:todo_crud/features/products/data/datasource/products_remote_data_source.dart';
import 'package:todo_crud/features/products/domain/entities/products.dart';
import 'package:todo_crud/features/products/domain/entities/products_page.dart';
import 'package:todo_crud/features/products/domain/entities/products_request.dart';

import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<ProductsPage> getProducts({required int page, required int limit}) {
    return remoteDataSource.getProducts(page: page, limit: limit);
  }

  @override
  Future<Product> getProductById(String id) {
    return remoteDataSource.getProductById(id);
  }

  @override
  Future<Product> createProduct(ProductRequest request) {
    return remoteDataSource.createProduct(request);
  }

  @override
  Future<Product> updateProduct(String id, ProductRequest request) {
    return remoteDataSource.updateProduct(id, request);
  }

  @override
  Future<Product> deleteProduct(String id) {
    return remoteDataSource.deleteProduct(id);
  }
}
