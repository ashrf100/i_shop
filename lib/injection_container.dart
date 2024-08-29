import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/core/firebase/firebase_auth_services.dart';
import 'package:i_shop/core/network/api_service.dart';
import 'package:i_shop/core/network/dio_factory.dart';
import 'package:i_shop/core/hive/hive_service.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/cubit/bottom_nav_cubit_cubit.dart';
import 'package:i_shop/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:i_shop/features/auth/data/repositories/auth_repository_imp.dart';
import 'package:i_shop/features/auth/domain/repositories/auth_repository.dart';
import 'package:i_shop/features/auth/domain/usecase/auth_usecase.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_bloc.dart';
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

/// Registers all dependencies with the [GetIt] instance.
/// This function is usually called at app startup.
Future<void> init() async {
  // External
  final Dio dio = DioFactory.getDio();

  // Core Services
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
  sl.registerLazySingleton<HiveService<AppProduct>>(
    () => HiveService<AppProduct>(AppAssets.productsBox),
  );
  sl.registerLazySingleton<FirebaseAuthServices>(() => FirebaseAuthServices());

  // Data Sources
  // Products Data Sources
  sl.registerLazySingleton<ProductsRemoteDataSource>(
    () => ProductsRemoteDataSourceDio(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<ProductsLocalDataSource>(
    () =>
        ProductsLocalDataSourceImpl(hiveService: sl<HiveService<AppProduct>>()),
  );

  // Cart Data Sources
  sl.registerLazySingleton<CartRemoteDataSource>(
    () => CartRemoteDataSourceDio(apiService: sl<ApiService>()),
  );

  // Auth Data Source
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );

  // Repositories
  // Products Repository
  sl.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImpl(
      productsRemoteDataSource: sl<ProductsRemoteDataSource>(),
      productsLocalDataSource: sl<ProductsLocalDataSource>(),
    ),
  );

  // Cart Repository
  sl.registerLazySingleton<CartRepository>(
    () => CartRepositoryImpl(cartRemoteDataSource: sl<CartRemoteDataSource>()),
  );

  // Auth Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      authRemoteDataSource: sl<AuthRemoteDataSource>(),
      firebaseAuthServices: sl<FirebaseAuthServices>(),
    ),
  );

  // Use Cases
  // Products Use Cases
  sl.registerLazySingleton<GetHomeDataUseCase>(
    () => GetHomeDataUseCase(repostiory: sl<ProductsRepository>()),
  );
  sl.registerLazySingleton<GetProductByCategorysUseCase>(
    () => GetProductByCategorysUseCase(repostiory: sl<ProductsRepository>()),
  );
  sl.registerLazySingleton<GetProductBySearchsUseCase>(
    () => GetProductBySearchsUseCase(repostiory: sl<ProductsRepository>()),
  );
  sl.registerLazySingleton<GetProductBySortUseCase>(
    () => GetProductBySortUseCase(repostiory: sl<ProductsRepository>()),
  );
  sl.registerLazySingleton<GetHomeProductsUseCase>(
    () => GetHomeProductsUseCase(repostiory: sl<ProductsRepository>()),
  );
  sl.registerLazySingleton<AddFavoriteUseCase>(
    () => AddFavoriteUseCase(repostiory: sl<ProductsRepository>()),
  );
  sl.registerLazySingleton<RemoveFavoriteUseCase>(
    () => RemoveFavoriteUseCase(repostiory: sl<ProductsRepository>()),
  );
  sl.registerLazySingleton<GetFavoritesUseCase>(
    () => GetFavoritesUseCase(repostiory: sl<ProductsRepository>()),
  );

  // Cart Use Cases
  sl.registerLazySingleton<GetCartByUserUseCase>(
    () => GetCartByUserUseCase(sl<CartRepository>()),
  );
  sl.registerLazySingleton<AddProductToCartUseCase>(
    () => AddProductToCartUseCase(sl<CartRepository>()),
  );
  sl.registerLazySingleton<UpdateCartUseCase>(
    () => UpdateCartUseCase(sl<CartRepository>()),
  );

  // Auth Use Cases
  sl.registerLazySingleton<LoginUserUseCase>(
    () => LoginUserUseCase(authRepository: sl<AuthRepository>()),
  );
  sl.registerLazySingleton<LoginWithGoogleUseCase>(
    () => LoginWithGoogleUseCase(sl<AuthRepository>()),
  );
  sl.registerLazySingleton<LoginWithFacebookUseCase>(
    () => LoginWithFacebookUseCase(sl<AuthRepository>()),
  );

  // Blocs
  // Home Bloc
  sl.registerLazySingleton<BottomNavCubit>(() => BottomNavCubit());

  sl.registerFactory<HomeBloc>(() => HomeBloc(
        getHomeDataUseCase: sl<GetHomeDataUseCase>(),
        getProductByCategorysUseCase: sl<GetProductByCategorysUseCase>(),
        getProductBySearchsUseCase: sl<GetProductBySearchsUseCase>(),
        getProductBySortUseCase: sl<GetProductBySortUseCase>(),
        getHomeProductsUseCase: sl<GetHomeProductsUseCase>(),
      ));

  // Favorites Bloc
  sl.registerLazySingleton<FavoritesBloc>(() => FavoritesBloc(
        addFavoriteUseCase: sl<AddFavoriteUseCase>(),
        removeFavoriteUseCase: sl<RemoveFavoriteUseCase>(),
        getFavoritesUseCase: sl<GetFavoritesUseCase>(),
      ));

  // Cart Bloc
  sl.registerLazySingleton<CartBloc>(() => CartBloc(
        getCartByUserUseCase: sl<GetCartByUserUseCase>(),
        addProductToCartUseCase: sl<AddProductToCartUseCase>(),
        updateCartUseCase: sl<UpdateCartUseCase>(),
      ));

  // Login Bloc
  sl.registerLazySingleton<LoginBloc>(() => LoginBloc(
        loginUserUseCase: sl<LoginUserUseCase>(),
        loginWithGoogleUseCase: sl<LoginWithGoogleUseCase>(),
        loginWithFacebookUseCase: sl<LoginWithFacebookUseCase>(),
      ));
}
