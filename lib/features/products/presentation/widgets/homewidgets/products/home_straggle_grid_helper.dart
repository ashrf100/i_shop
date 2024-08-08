import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/core/widgets/error_notification.dart';

import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_state.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/loading_products_grid.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/products_grid.dart';

class HomeStaggeredGridHelper extends StatelessWidget {
  const HomeStaggeredGridHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => const LoadingProductsGrid(),
            productsLoading: () => const LoadingProductsGrid(),
            products: (products) => ProductsGrid(products: products),
            init: (products, categories) => ProductsGrid(products: products),
            productsError: (msg, category, searchText, sortBy, order) =>
                ErrorNotification(message: msg, searchText: searchText),
            error: (msg) => ErrorNotification(message: msg),
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
