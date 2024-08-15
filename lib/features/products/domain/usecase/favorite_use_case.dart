import 'package:dartz/dartz.dart';
import 'package:i_shop/core/error/app_exception.dart';

import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/domain/repositories/products_repository.dart';

class AddFavoriteUseCase {
  final ProductsRepostiory repostiory;

  AddFavoriteUseCase({required this.repostiory});

  Future<Either<AppException, void>> call(AppProduct appProduct) async {
    return await repostiory.addFavorite(appProduct);
  }
}

class RemoveFavoriteUseCase {
  final ProductsRepostiory repostiory;

  RemoveFavoriteUseCase({required this.repostiory});

  Future<Either<AppException, Unit>> call(String id) async {
    return await repostiory.removeFavorite(id);
  }
}

class GetFavoritesUseCase {
  final ProductsRepostiory repostiory;

  GetFavoritesUseCase({required this.repostiory});

  Future<Either<AppException, List<AppProduct>>> call() async {
    return await repostiory.getFavorites();
  }
}
