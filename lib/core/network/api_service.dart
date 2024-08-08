import 'package:dio/dio.dart';

import 'package:i_shop/core/const/app_links.dart';
import 'package:i_shop/features/products/data/models/categories_model.dart';
import 'package:i_shop/features/products/data/models/products_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppLinks.serverLink)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(AppLinks.categories)
  Future<List<CategoriesResponse>> getCategories();

  @GET(AppLinks.products)
  Future<ProductsResponse> getProducts({
    @Query('limit') required int limit,
    @Query('skip') required int skip,
    @Query('sortBy') String? sortBy,
    @Query('order') String? order,
  });

  @GET('${AppLinks.category}{categoryName}')
  Future<ProductsResponse> getProductsByCategory({
    @Path('categoryName') required String categoryName,
    @Query('limit') required int limit,
    @Query('skip') required int skip,
  });

  @GET(AppLinks.search)
  Future<ProductsResponse> getProductsBySearch({
    @Query('q') required String searchText,
    @Query('limit') required int limit,
    @Query('skip') required int skip,
  });
}
