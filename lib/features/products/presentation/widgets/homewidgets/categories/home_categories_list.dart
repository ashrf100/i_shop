import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/widgets/error_notification.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_state.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/categories/category_item_widget.dart';
import 'package:animate_do/animate_do.dart';

class CategoriesHorizontalList extends StatelessWidget {
  const CategoriesHorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) {
        return current.maybeWhen(
          loading: () => true,
          init: (products, categories) => true,
          error: (msg) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const CategoriesLoadingPlaceholder(),
          init: (products, categories) =>
              CategoryListWidget(categories: categories),
          error: (msg) {
            if (state is! ErrorHomeState) {
              return ErrorNotification(message: msg);
            }
            return const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

class CategoriesLoadingPlaceholder extends StatelessWidget {
  const CategoriesLoadingPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const CategoryItemShimmer(),
      ),
    );
  }
}

class CategoryListWidget extends StatelessWidget {
  final List<AppCategory> categories;

  const CategoryListWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: SizedBox(
        height: 30.h,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final isSelected =
                          BlocProvider.of<HomeBloc>(context).selectedIndex ==
                              index;
                      return CategoryItemWidget(
                        category: categories[index],
                        isSelected: isSelected,
                        onTap: () {
                          BlocProvider.of<HomeBloc>(context).add(
                              HomeEvent.productsByCategory(
                                  categories[index], index));
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
