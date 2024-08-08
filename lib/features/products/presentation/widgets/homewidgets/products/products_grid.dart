import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_routes.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/grid_product.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/loading_dialog.dart';

class ProductsGrid extends StatefulWidget {
  final List<AppProduct> products;

  const ProductsGrid({super.key, required this.products});

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  late ScrollController _scrollController;
  bool _isLoading = false;
  late BuildContext _dialogContext;

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
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !_isLoading &&
        !BlocProvider.of<HomeBloc>(context).isNoMore) {
      setState(() {
        _isLoading = true;
      });

      final homeBloc = BlocProvider.of<HomeBloc>(context);

      _showLoadingDialog();

      try {
        if (homeBloc.currentHomeEvent != null) {
          homeBloc.add(homeBloc.currentHomeEvent!);
        } else {
          homeBloc.add(const HomeEvent.products());
        }

        await Future.delayed(const Duration(seconds: 1));
      } finally {
        _hideLoadingDialog();
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _showLoadingDialog() {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        _dialogContext = context;
        return const LoadingDialog();
      },
    );
  }

  void _hideLoadingDialog() {
    if (Navigator.canPop(_dialogContext)) {
      Navigator.of(_dialogContext).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0.w),
      child: GridView.builder(
        primary: false,
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0.0..h,
            crossAxisSpacing: 8.0.w,
            childAspectRatio: 0.372.w),
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          final product = widget.products[index];
          return GridProduct(
            product: product,
            index: index,
            onTap: (product) {
              Navigator.pushNamed(
                context,
                AppRoutes.productInfo,
                arguments: product,
              );
            },
          );
        },
      ),
    );
  }
}
