import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_event.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_state.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:i_shop/core/const/app_assets.dart';

class FavoriteCircleAvatar extends StatelessWidget {
  final AppProduct appProduct;

  const FavoriteCircleAvatar({
    super.key,
    required this.appProduct,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        final isFavorited = state.maybeWhen(
          loaded: (products) =>
              products.any((product) => product.id == appProduct.id),
          orElse: () => false,
        );

        return CircleAvatar(
          backgroundColor: AppColors.darkGray,
          child: GestureDetector(
            onTap: () {
              if (isFavorited) {
                context.read<FavoritesBloc>().add(
                      RemoveFavoriteEvent(appProduct.id.toString()),
                    );
              } else {
                context.read<FavoritesBloc>().add(
                      AddFavoriteEvent(appProduct.copyWith(isFavorite: true)),
                    );
              }
            },
            child: Center(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: isFavorited
                    ? const Padding(
                        padding: EdgeInsets.only(left: 1.5, top: 1),
                        child: FlareActor(
                          color: AppColors.white,
                          fit: BoxFit.cover,
                          AppAssets.heart2,
                          animation: 'Like heart',
                        ),
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: AppColors.white,
                        size: 24,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
