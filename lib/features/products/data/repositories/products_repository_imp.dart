import 'package:dartz/dartz.dart';
import 'package:i_shop/core/enum/sort_enum.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/core/error/exceptions_errors.dart';
import 'package:i_shop/features/products/data/datasources/products_remote_data_source.dart';
import 'package:i_shop/features/products/data/datasources/products_local_data_source.dart';
import 'package:i_shop/features/products/data/models/categories_model.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepostiory {
  final ProductsRemoteDataSource productsRemoteDataSource;
  final ProductsLocalDataSource productsLocalDataSource;

  ProductsRepositoryImpl({
    required this.productsRemoteDataSource,
    required this.productsLocalDataSource,
  });

  Future<List<AppProduct>> _updateFavoriteStatus(
      List<AppProduct> products) async {
    final favoritesResult = await getFavorites();
    return favoritesResult.fold(
      (failure) => products,
      (favorites) {
        final favoriteIds = favorites.map((p) => p.id).toSet();
        return products.map((product) {
          return product.copyWith(isFavorite: favoriteIds.contains(product.id));
        }).toList();
      },
    );
  }

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
      final updatedProducts = await _updateFavoriteStatus(products);

      final categoriesResponse = await productsRemoteDataSource.getcategories();
      final categories =
          CategoriesResponse.convertToAppCategories(categoriesResponse);
      categories.insert(0, const AppCategory(title: "All Items"));

      return Right(Tuple2(updatedProducts, categories));
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

      final productsResponse =
          await productsRemoteDataSource.getProductsByCategory(
              limit: limit, skip: skip, categoryName: categoryName);
      final products = productsResponse.toAppProducts();
      final updatedProducts = await _updateFavoriteStatus(products);

      return Right(updatedProducts);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }

  @override
  Future<Either<AppException, List<AppProduct>>> getProducts({
    required int limit,
    required int skip,
    SortBy? sortBy,
    Sortorder? order,
  }) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }

      final productsResponse = await productsRemoteDataSource.getProducts(
          limit: limit, skip: skip, sortBy: sortBy?.name, order: order?.name);
      final products = productsResponse.toAppProducts();
      final updatedProducts = await _updateFavoriteStatus(products);

      return Right(updatedProducts);
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

      final productsResponse =
          await productsRemoteDataSource.getProductsBySearch(
              limit: limit, skip: skip, searchText: searchText);
      final products = productsResponse.toAppProducts();
      final updatedProducts = await _updateFavoriteStatus(products);

      return Right(updatedProducts);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }

  @override
  Future<Either<AppException, void>> addFavorite(AppProduct appProduct) async {
    try {
      await productsLocalDataSource.addFavorite(appProduct);
      return const Right(unit);
    } on AppException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, Unit>> removeFavorite(String id) async {
    try {
      await productsLocalDataSource.removeFavorite(id);
      return Right(unit);
    } on AppException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, List<AppProduct>>> getFavorites() async {
    try {
      final favorites = await productsLocalDataSource.getFavorites();
      return Right(favorites);
    } on AppException catch (e) {
      return Left(e);
    }
  }
}
