import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/widgets/error_notification.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_state.dart';
import 'package:i_shop/features/cart/presentation/widgets/header_widget.dart';
import 'package:i_shop/features/cart/presentation/widgets/loaded_cart.dart';
import 'package:i_shop/features/cart/presentation/widgets/loading_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: () => LoadingCart(),
                      loaded: (cart) => LoadedCart(cart: cart),
                      error: (msg) => ErrorNotification(message: msg),
                      orElse: () => const SizedBox.shrink());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
