import 'package:dartz/dartz.dart';
import 'package:i_shop/core/enum/sort_enum.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/core/error/exceptions_errors.dart';
import 'package:i_shop/features/products/data/datasources/products_remote_data_source.dart';
import 'package:i_shop/features/products/data/models/categories_model.dart';

import 'package:i_shop/features/products/domain/entities/app_category.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepostiory {
  final ProductsRemoteDataSource productsRemoteDataSource;

  ProductsRepositoryImpl({required this.productsRemoteDataSource});

  @override
  Future<Either<AppException, Tuple2<List<AppProduct>, List<AppCategory>>>>
      getHomeData({required int limit, required int skip}) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }

      final productsResponse =
          await productsRemoteDataSource.getProducts(limit: limit, skip: skip);
      final products = productsResponse.toAppProducts();

      final categoriesResponse = await productsRemoteDataSource.getcategories();
      final categories =
          CategoriesResponse.convertToAppCategories(categoriesResponse);
      categories.insert(0, AppCategory(title: "All Items"));

      return Right(Tuple2(products, categories));
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }

  @override
  Future<Either<AppException, List<AppProduct>>> getProductsByCategory({
    required int limit,
    required int skip,
    required String categoryName,
  }) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }

      final productsResponse = await productsRemoteDataSource
          .getProductsByCategory(limit : limit,skip:  skip, categoryName:  categoryName);
      final products = productsResponse.toAppProducts();

      return Right(products);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }

  @override
  Future<Either<AppException, List<AppProduct>>> getProducts(
      {required int limit,
      required int skip,
      SortBy? sortBy,
      Sortorder? order}) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }

      final productsResponse = await productsRemoteDataSource.getProducts(
          limit: limit, skip: skip, sortBy: sortBy?.name, order: order?.name);
      final products = productsResponse.toAppProducts();

      return Right(products);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }

  @override
  Future<Either<AppException, List<AppProduct>>> getProductsBySearch({
    required int limit,
    required int skip,
    required String searchText,
  }) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }

      final productsResponse = await productsRemoteDataSource
          .getProductsBySearch(limit: limit, skip: skip, searchText: searchText );
      final products = productsResponse.toAppProducts();

      return Right(products);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }
}
