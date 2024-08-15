import 'package:i_shop/core/hive/hive_service.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/core/error/exceptions_errors.dart';

abstract class ProductsLocalDataSource {
  Future<void> addFavorite(AppProduct appProduct);
  Future<void> removeFavorite(String id);
  Future<List<AppProduct>> getFavorites();
}

class ProductsLocalDataSourceImpl implements ProductsLocalDataSource {
  final HiveService<AppProduct> hiveService;

  ProductsLocalDataSourceImpl({required this.hiveService});

  @override
  Future<void> addFavorite(AppProduct appProduct) async {
    try {
      await hiveService.put(appProduct.id.toString(), appProduct);
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<void> removeFavorite(String id) async {
    try {
      await hiveService.delete(id);
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<List<AppProduct>> getFavorites() async {
    try {
      return await hiveService.getAll();
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }
}
