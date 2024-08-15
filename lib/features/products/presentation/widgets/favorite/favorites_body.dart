import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_state.dart';
import 'package:i_shop/features/products/presentation/widgets/favorite/favorites_grid_view.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/products_loading_grid.dart';
import 'package:i_shop/core/widgets/error_notification.dart';

class FavoritesBody extends StatelessWidget {
  final ScrollController scrollController;
  final void Function() showLoadingDialog;
  final void Function() hideLoadingDialog;

  const FavoritesBody({
    Key? key,
    required this.scrollController,
    required this.showLoadingDialog,
    required this.hideLoadingDialog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const LoadingProductsGrid(),
          loaded: (favorites) => FavoritesGridView(
            favorites: favorites,
            scrollController: scrollController,
          ),
          error: (msg) => const ErrorNotification(
            message: 'You have no favorite products yet. Start adding some!',
            withButton: false,
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
