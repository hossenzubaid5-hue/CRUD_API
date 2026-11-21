class CreateTask {
  final ProductRepository repository;

  CreateTask(this.repository);

  Future<Product> call(ProductsRequest request) {
    return repository.createProduct(request);
  }
}
