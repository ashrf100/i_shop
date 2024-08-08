import 'package:i_shop/core/error/exceptions_errors.dart';
import 'package:i_shop/core/network/api_service.dart';
import 'package:i_shop/features/products/data/models/categories_model.dart';
import 'package:i_shop/features/products/data/models/products_model.dart';

abstract class ProductsRemoteDataSource {
  Future<List<CategoriesResponse>> getcategories();

  Future<ProductsResponse> getProducts({
    required int limit,
    required int skip,
    String? sortBy,
    String? order,
  });

  Future<ProductsResponse> getProductsByCategory({
    required int limit,
    required int skip,
    required String categoryName,
  });

  Future<ProductsResponse> getProductsBySearch({
    required int limit,
    required String searchText,
    required int skip,
  });
}

class ProductsRemoteDataSourceDio implements ProductsRemoteDataSource {
  final ApiService apiService;

  ProductsRemoteDataSourceDio({required this.apiService});

  @override
  Future<ProductsResponse> getProducts({
    required int limit,
    required int skip,
    String? sortBy,
    String? order,
  }) async {
    try {
      final response = await apiService.getProducts(
        limit: limit,
        skip: skip,
        sortBy: sortBy,
        order: order,
      );
      return response;
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<List<CategoriesResponse>> getcategories() async {
    try {
      final response = await apiService.getCategories();
      return response;
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<ProductsResponse> getProductsByCategory({
    required int limit,
    required int skip,
    required String categoryName,
  }) async {
    try {
      final response = await apiService.getProductsByCategory(
        limit: limit,
        skip: skip,
        categoryName: categoryName,
      );
      return response;
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<ProductsResponse> getProductsBySearch({
    required int limit,
    required String searchText,
    required int skip,
  }) async {
    try {
      final response = await apiService.getProductsBySearch(
        searchText: searchText,
        limit: limit,
        skip: skip,
      );
      return response;
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }
}
