import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/domain/usecase/products_usecase.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeDataUseCase getHomeDataUseCase;
  final GetProductByCategorysUseCase getProductByCategorysUseCase;
  final GetProductBySearchsUseCase getProductBySearchsUseCase;
  final GetProductBySortUseCase getProductBySortUseCase;
  final GetHomeProductsUseCase getHomeProductsUseCase;

  List<AppProduct> homeProductsList = [];
  List<AppCategory> homeCategoriesList = [];
  int selectedIndex = 0;
  int limit = 10;
  bool isNoMore = false;

  HomeEvent? currentHomeEvent = ProductsEvent();
  AppCategory? currentAppCategory;

  HomeBloc(
      {required this.getHomeDataUseCase,
      required this.getHomeProductsUseCase,
      required this.getProductBySortUseCase,
      required this.getProductBySearchsUseCase,
      required this.getProductByCategorysUseCase})
      : super(const HomeState.loading()) {
    on<HomeInitEvent>((event, emit) async {
      final failureOrProducts =
          await getHomeDataUseCase(limit: limit, skip: homeProductsList.length);
      failureOrProducts.fold(
        (failure) => emit(HomeState.error(failure.message.toString())),
        (tuple2) {
          homeProductsList = tuple2.value1;
          homeCategoriesList = tuple2.value2;
          emit(HomeState.init(
            products: homeProductsList,
            categories: homeCategoriesList,
          ));
        },
      );
    });
    on<ProductsEvent>((event, emit) async {
      handleNewProductRequest(event, emit);

      final failureOrProducts = await getHomeProductsUseCase(
          limit: limit, skip: homeProductsList.length);
      failureOrProducts.fold(
        (failure) => emit(HomeState.error(failure.message.toString())),
        (products) => _handleProductListUpdate(event, products, emit),
      );
    });
    on<ProductsBySortEvent>((event, emit) async {
      handleNewProductRequest(event, emit);

      final failureOrProducts = await getProductBySortUseCase(
        limit: limit,
        skip: homeProductsList.length,
        sortBy: event.sortBy,
        order: event.order,
      );
      failureOrProducts.fold(
        (failure) => emit(HomeState.productsError(
          msg: failure.message.toString(),
          sortBy: event.sortBy,
          order: event.order,
        )),
        (products) => _handleProductListUpdate(event, products, emit),
      );
    });
    on<ProductsBySearchEvent>((event, emit) async {
      handleNewProductRequest(event, emit);

      final failureOrProducts = await getProductBySearchsUseCase(
        searchText: event.searchText,
        limit: limit,
        skip: homeProductsList.length,
      );
      failureOrProducts.fold(
        (failure) => emit(HomeState.productsError(
          msg: failure.message.toString(),
          searchText: event.searchText,
        )),
        (products) => _handleProductListUpdate(
          event,
          products,
          emit,
          errorMessage:
              "No products found for '${event.searchText}'. Try a different search term!",
        ),
      );
    });
    on<ProductsByCategoryEvent>((event, emit) async {
      selectedIndex = event.selectedIndex;
      if (currentHomeEvent != event || event.category != currentAppCategory) {
        homeProductsList.clear();
        emit(const HomeState.productsLoading());
        isNoMore = false;
      }
      currentHomeEvent = event;
      final failureOrProducts = await getProductByCategorysUseCase(
          categoryName: event.category.title.toString(),
          limit: limit,
          skip: homeProductsList.length);
      failureOrProducts.fold(
        (failure) => emit(HomeState.productsError(
            msg: failure.message.toString(), category: event.category)),
        (products) {
          if (currentHomeEvent == event &&
              event.category == currentAppCategory) {
            homeProductsList.addAll(products);
            isNoMore = products.length < limit;
          } else {
            currentAppCategory = event.category;
            homeProductsList = products;
          }
          emit(HomeState.products(homeProductsList));
        },
      );
    });
  }

  void _handleProductListUpdate(
    HomeEvent event,
    List<AppProduct> products,
    Emitter<HomeState> emit, {
    String? errorMessage,
  }) {
    if (currentHomeEvent == event) {
      if (errorMessage != null && products.isEmpty) {
        emit(HomeState.productsError(msg: errorMessage));
      } else {
        homeProductsList.addAll(products);
        emit(HomeState.products(homeProductsList));
        isNoMore = products.length < limit;
      }
    } else {
      emit(HomeState.products(products));
    }
  }

  void handleNewProductRequest(HomeEvent event, Emitter<HomeState> emit) {
    if (currentHomeEvent != event && currentHomeEvent != null) {
      homeProductsList.clear();
      emit(const HomeState.productsLoading());
      isNoMore = false;
    }
    selectedIndex = 0;
    currentHomeEvent = event;
  }
}
