import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:i_shop/core/network/api_service.dart';
import 'package:i_shop/core/network/dio_factory.dart';
import 'package:i_shop/features/products/data/datasources/products_remote_data_source.dart';
import 'package:i_shop/features/products/data/repositories/products_repository_imp.dart';
import 'package:i_shop/features/products/domain/repositories/products_repository.dart';
import 'package:i_shop/features/products/domain/usecase/products_usecase.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
// External//
  Dio dio = DioFactory.getDio();

//  products  //
// Bloc
  sl.registerFactory(() => HomeBloc(
      getHomeDataUseCase: sl(),
      getProductByCategorysUseCase: sl(),
      getProductBySearchsUseCase: sl(),
      getProductBySortUseCase: sl(),
      getHomeProductsUseCase: sl()));

  // Usecases
  sl.registerLazySingleton(() => GetHomeDataUseCase(repostiory: sl()));
  sl.registerLazySingleton(
      () => GetProductByCategorysUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => GetProductBySearchsUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => GetProductBySortUseCase(repostiory: sl()));
  sl.registerLazySingleton(() => GetHomeProductsUseCase(repostiory: sl()));

  // Repository
  sl.registerLazySingleton<ProductsRepostiory>(() => ProductsRepositoryImpl(
        productsRemoteDataSource: sl(),
      ));
  // Datasources ProductsLocalDataSource
  sl.registerLazySingleton<ProductsRemoteDataSource>(
      () => ProductsRemoteDataSourceDio(apiService: sl()));

  // Core
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
}
