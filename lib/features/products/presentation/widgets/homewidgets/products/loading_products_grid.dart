import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/grid_product.dart';

class LoadingProductsGrid extends StatelessWidget {
  const LoadingProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 15.0.w,
        children: List.generate(
          5,
          (index) => const GridProductShimmer(),
        ),
      ),
    );
  }
}
