import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:i_shop/core/routing/app_routes.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/product_grid_item.dart';

class FavoritesGridView extends StatelessWidget {
  final List<AppProduct> favorites;
  final ScrollController scrollController;

  const FavoritesGridView({
    Key? key,
    required this.favorites,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Container(
        padding: EdgeInsets.all(8.0.w),
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0.w,
          crossAxisSpacing: 8.0.w,
          children: List.generate(
            favorites.length,
            (index) => AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: ProductGridItem(
                key: ValueKey(favorites[index].id),
                product: favorites[index],
                index: index,
                onTap: (product) {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.productInfo,
                    arguments: product,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
