import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/core/routing/app_routes.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/widgets/bottom_nav_widget.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/features/cart/presentation/pages/cart_page.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/pages/product_page.dart';

import '../../features/cart/presentation/bloc/cart_bloc.dart';

import 'package:i_shop/injection_container.dart' as di;

import '../../features/products/presentation/bloc/Favorite/favorite_bloc.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.main:
        return FadePageRoute(page: const BottomNavBarWidget());
      case AppRoutes.productInfo:
        if (args is AppProduct) {
          return MaterialPageRoute<void>(
            builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: di.sl<CartBloc>(),
                ),
                BlocProvider.value(
                  value: di.sl<FavoritesBloc>(),
                ),
              ],
              child: ProductPage(product: args),
            ),
          );
        }
        return _errorRoute();

      case AppRoutes.cart:
        return MaterialPageRoute<void>(
          builder: (_) => BlocProvider.value(
            value: di.sl<CartBloc>(),
            child: const CartPage(),
          ),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found!')),
      );
    });
  }
}

class FadePageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  FadePageRoute({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
