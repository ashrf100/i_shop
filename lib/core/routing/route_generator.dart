import 'package:flutter/material.dart';
import 'package:i_shop/core/routing/app_routes.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/widgets/bottom_nav_widget.dart';
import 'package:i_shop/features/auth/presentation/pages/login_page.dart';
import 'package:i_shop/features/cart/presentation/pages/cart_page.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/pages/product_page.dart';
import 'package:i_shop/ishop.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.main:
        return FadePageRoute(page: BottomNavBarWidget());
      case AppRoutes.login:
        return FadePageRoute(page: const WelcomePage());
      case AppRoutes.productInfo:
        if (args is AppProduct) {
          return SlideFromBottomPageRoute(
            page: ProductPage(product: args),
          );
        }
        return _errorRoute();
      case AppRoutes.cart:
        return SlideFromBottomPageRoute(page: const CartPage());
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

class SlideFromBottomPageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  SlideFromBottomPageRoute({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const offsetBegin = Offset(0.0, 1.0);
            const offsetEnd = Offset.zero;

            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            );

            final tween = Tween<Offset>(
              begin: offsetBegin,
              end: offsetEnd,
            ).animate(curvedAnimation);

            return SlideTransition(
              position: tween,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 850),
        );
}
