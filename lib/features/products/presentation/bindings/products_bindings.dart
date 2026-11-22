import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:todo_crud/features/products/data/datasource/products_remote_data_source.dart';
import 'package:todo_crud/features/products/data/repositories/products_repositrory_impl.dart';
import 'package:todo_crud/features/products/domain/repositories/product_repository.dart';
import 'package:todo_crud/features/products/domain/usecase/create_products.dart';
import 'package:todo_crud/features/products/domain/usecase/delete_products.dart';
import 'package:todo_crud/features/products/domain/usecase/get_product_by_id.dart';
import 'package:todo_crud/features/products/domain/usecase/get_products.dart';
import 'package:todo_crud/features/products/domain/usecase/update_products.dart';
import 'package:todo_crud/features/products/presentation/controllers/products_controller.dart';

import '../../../../core/network/dio_client.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    // Dio

    Get.lazyPut<Dio>(() => DioClient().dio);

    // Data Source

    Get.lazyPut<ProductRemoteDataSource>(
      () => ProductRemoteDataSource(Get.find<Dio>()),
    );

    // Repository

    Get.lazyPut<ProductRepository>(
      () => ProductRepositoryImpl(Get.find<ProductRemoteDataSource>()),
    );

    // Use Cases

    Get.lazyPut<GetProducts>(() => GetProducts(Get.find<ProductRepository>()));

    Get.lazyPut<GetProductById>(
      () => GetProductById(Get.find<ProductRepository>()),
    );

    Get.lazyPut<CreateProduct>(
      () => CreateProduct(Get.find<ProductRepository>()),
    );

    Get.lazyPut<UpdateProduct>(
      () => UpdateProduct(Get.find<ProductRepository>()),
    );

    Get.lazyPut<DeleteProduct>(
      () => DeleteProduct(Get.find<ProductRepository>()),
    );

    // Controller

    Get.lazyPut<ProductController>(
      () => ProductController(
        getProducts: Get.find<GetProducts>(),
        getProductById: Get.find<GetProductById>(),
        createProduct: Get.find<CreateProduct>(),
        updateProduct: Get.find<UpdateProduct>(),
        deleteProduct: Get.find<DeleteProduct>(),
      ),
    );
  }
}
