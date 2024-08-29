import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_event.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_state.dart';
import 'package:i_shop/injection_container.dart' as di;

class FavoriteCircleAvatar extends StatefulWidget {
  final AppProduct appProduct;

  const FavoriteCircleAvatar({
    super.key,
    required this.appProduct,
  });

  @override
  State<FavoriteCircleAvatar> createState() => _FavoriteCircleAvatarState();
}

class _FavoriteCircleAvatarState extends State<FavoriteCircleAvatar> {
  late bool isFavorited;

  @override
  void initState() {
    super.initState();
    isFavorited = widget.appProduct.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: di.sl<FavoritesBloc>(),
      child: BlocConsumer<FavoritesBloc, FavoritesState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (products) {
              setState(() {
                isFavorited = products.any((product) =>
                    product.id == widget.appProduct.id && product.isFavorite);
              });
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return CircleAvatar(
            backgroundColor: AppColors.darkGray,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: IconButton(
                key: ValueKey<bool>(isFavorited),
                icon: Icon(
                  isFavorited ? Icons.favorite_rounded : Icons.favorite_border,
                  color: AppColors.white,
                ),
                onPressed: () {
                  if (isFavorited) {
                    context.read<FavoritesBloc>().add(
                        RemoveFavoriteEvent(widget.appProduct.id.toString()));
                  } else {
                    context.read<FavoritesBloc>().add(AddFavoriteEvent(
                        widget.appProduct.copyWith(isFavorite: true)));
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
