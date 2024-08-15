import 'package:dartz/dartz.dart';
import 'package:i_shop/core/enum/sort_enum.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';

abstract class ProductsRepostiory {
  Future<Either<AppException, Tuple2<List<AppProduct>, List<AppCategory>>>>
      getHomeData({
    required int limit,
    required int skip,
  });

  Future<Either<AppException, List<AppProduct>>> getProducts({
    required int limit,
    required int skip,
    SortBy? sortBy,
    Sortorder? order,
  });

  Future<Either<AppException, List<AppProduct>>> getProductsByCategory({
    required int limit,
    required int skip,
    required String categoryName,
  });

  Future<Either<AppException, List<AppProduct>>> getProductsBySearch({
    required int limit,
    required int skip,
    required String searchText,
  });

  Future<Either<AppException, void>> addFavorite(AppProduct appProduct);
  Future<Either<AppException, Unit>> removeFavorite(String id);
  Future<Either<AppException, List<AppProduct>>> getFavorites();
}
