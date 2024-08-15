import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/core/network/api_service.dart';
import 'package:i_shop/core/network/dio_factory.dart';
import 'package:i_shop/core/hive/hive_service.dart';
import 'package:i_shop/features/cart/domain/repository/cart_repository.dart';
import 'package:i_shop/features/cart/domain/usecase/cart_usecase.dart';
import 'package:i_shop/features/products/data/datasources/products_remote_data_source.dart';
import 'package:i_shop/features/products/data/datasources/products_local_data_source.dart';
import 'package:i_shop/features/products/data/repositories/products_repository_imp.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/domain/repositories/products_repository.dart';
import 'package:i_shop/features/products/domain/usecase/favorite_use_case.dart';
import 'package:i_shop/features/products/domain/usecase/products_usecase.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:i_shop/features/cart/data/repositories/cart_repository_imp.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  Dio dio = DioFactory.getDio();

  // Core
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
  sl.registerLazySingleton<HiveService<AppProduct>>(
      () => HiveService<AppProduct>(AppAssets.productsBox));

  // DataSources
  // Products
  sl.registerLazySingleton<ProductsRemoteDataSource>(
    () => ProductsRemoteDataSourceDio(apiService: sl()),
  );
  sl.registerLazySingleton<ProductsLocalDataSource>(
    () => ProductsLocalDataSourceImpl(hiveService: sl()),
  );

  // Cart
  sl.registerLazySingleton<CartRemoteDataSource>(
    () => CartRemoteDataSourceDio(apiService: sl()),
  );

  // Repository
  sl.registerLazySingleton<ProductsRepostiory>(
    () => ProductsRepositoryImpl(
      productsRemoteDataSource: sl(),
      productsLocalDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<CartRepository>(
    () => CartRepositoryImpl(
      cartRemoteDataSource: sl(),
    ),
  );

  // Usecases
  // Products
  sl.registerLazySingleton(() => GetHomeDataUseCase(repostiory: sl()));
  sl.registerLazySingleton(
      () => GetProductByCategorysUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => GetProductBySearchsUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => GetProductBySortUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => GetHomeProductsUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => AddFavoriteUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => RemoveFavoriteUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => GetFavoritesUseCase(repostiory: sl()));

  // Cart
  sl.registerLazySingleton(() => GetCartByUserUseCase(sl()));
  sl.registerLazySingleton(() => AddProductToCartUseCase(sl()));
  sl.registerLazySingleton(() => UpdateCartUseCase(sl()));

  // Bloc
  sl.registerFactory(() => HomeBloc(
        getHomeDataUseCase: sl(),
        getProductByCategorysUseCase: sl(),
        getProductBySearchsUseCase: sl(),
        getProductBySortUseCase: sl(),
        getHomeProductsUseCase: sl(),
      ));

  sl.registerFactory(() => FavoritesBloc(
        addFavoriteUseCase: sl(),
        removeFavoriteUseCase: sl(),
        getFavoritesUseCase: sl(),
      ));

  sl.registerFactory(() => CartBloc(
        getCartByUserUseCase: sl(),
        addProductToCartUseCase: sl(),
        updateCartUseCase: sl(),
      ));
}
