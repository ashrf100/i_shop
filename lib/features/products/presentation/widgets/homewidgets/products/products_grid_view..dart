import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/routing/app_routes.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/loading_dialog.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/product_grid_item.dart';
import 'package:i_shop/injection_container.dart' as di;

class ProductsGrid extends StatefulWidget {
  final List<AppProduct> products;

  const ProductsGrid({super.key, required this.products});

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  late ScrollController _scrollController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() async {
    final homeBloc = BlocProvider.of<HomeBloc>(context);

    if (_isAtBottom() && !_isLoading && !homeBloc.isNoMore) {
      setState(() => _isLoading = true);
      _showLoadingDialog(context);

      try {
        homeBloc.add(homeBloc.currentHomeEvent ?? const HomeEvent.products());
        await Future.delayed(const Duration(milliseconds: 500));
      } finally {
        _hideLoadingDialog(context);
        setState(() => _isLoading = false);
      }
    }
  }

  bool _isAtBottom() =>
      _scrollController.position.pixels ==
      _scrollController.position.maxScrollExtent;

  void _showLoadingDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (_) => const LoadingDialog(),
    );
  }

  void _hideLoadingDialog(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          _ProductGridView(products: widget.products),
          _NoMoreProductsMessage(),
        ],
      ),
    );
  }
}

class _ProductGridView extends StatelessWidget {
  final List<AppProduct> products;

  const _ProductGridView({required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0.w),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 3.0.h,
        crossAxisSpacing: 16.0.w,
        children: List.generate(
          products.length,
          (index) => ProductGridItem(
            product: products[index],
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
    );
  }
}

class _NoMoreProductsMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    return homeBloc.isNoMore
        ? SizedBox(
            height: 130.0.h,
            child: Text(
              'No more products to see',
              style: AppTextStyles.lightGray14Regular,
            ),
          )
        : const SizedBox.shrink();
  }
}
