
import 'package:todo_crud/features/products/domain/entities/products.dart';
import 'package:todo_crud/features/products/domain/entities/products_page.dart';
import 'package:todo_crud/features/products/domain/entities/products_request.dart';

abstract class ProductRepository {

  Future<ProductsPage> getProducts({
    required int page,
    required int limit,
  });

  Future<Product> getProductById(String id);

  Future<Product> createProduct(ProductsRequest request);

  Future<Product> updateProduct(
    String id,
    ProductsRequest request,
  );

  Future<Product> deleteProduct(String id);
}
