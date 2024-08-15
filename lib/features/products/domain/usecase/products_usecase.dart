
import 'package:dartz/dartz.dart';
import 'package:i_shop/core/enum/sort_enum.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/domain/repositories/products_repository.dart';

class GetHomeDataUseCase {
  final ProductsRepostiory repostiory;

  GetHomeDataUseCase({required this.repostiory});

  Future<Either<AppException, Tuple2<List<AppProduct>, List<AppCategory>>>>
      call({required int limit, required int skip}) async {
    return await repostiory.getHomeData(limit: limit, skip: skip);
  }
}

class GetHomeProductsUseCase {
  final ProductsRepostiory repostiory;

  GetHomeProductsUseCase({required this.repostiory});

  Future<Either<AppException, List<AppProduct>>> call(
      {required int limit, required int skip}) async {
    return await repostiory.getProducts(limit: limit, skip: skip);
  }
}

class GetProductByCategorysUseCase {
  final ProductsRepostiory repostiory;

  GetProductByCategorysUseCase({required this.repostiory});

  Future<Either<AppException, List<AppProduct>>> call(
      {required int limit,
      required int skip,
      required String categoryName}) async {
    String formattedCategoryName = categoryName.replaceAll(' ', '-');
    if (formattedCategoryName == "All-Items") {
      return await repostiory.getProducts(limit: limit, skip: skip);
    }
    return await repostiory.getProductsByCategory(
        limit: limit, skip: skip, categoryName: formattedCategoryName);
  }
}

class GetProductBySearchsUseCase {
  final ProductsRepostiory repostiory;

  GetProductBySearchsUseCase({required this.repostiory});

  Future<Either<AppException, List<AppProduct>>> call(
      {required String searchText,
      required int limit,
      required int skip}) async {
    return await repostiory.getProductsBySearch(
        limit: limit, skip: skip, searchText: searchText);
  }
}

class GetProductBySortUseCase {
  final ProductsRepostiory repostiory;

  GetProductBySortUseCase({required this.repostiory});

  Future<Either<AppException, List<AppProduct>>> call(
      {required int limit,
      required int skip,
      required SortBy sortBy,
      required Sortorder order}) async {
    return await repostiory.getProducts(
        limit: limit, skip: skip, sortBy: sortBy, order: order);
  }
}
