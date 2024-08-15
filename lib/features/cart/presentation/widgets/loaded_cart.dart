import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';
import 'package:i_shop/features/cart/presentation/widgets/cart_button.dart';
import 'package:i_shop/features/cart/presentation/widgets/cart_payment_section.dart';
import 'package:i_shop/features/cart/presentation/widgets/cart_product_item.dart';
import 'package:i_shop/features/cart/presentation/widgets/cart_total_section.dart';

class LoadedCart extends StatelessWidget {
  final AppCart cart;

  const LoadedCart({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    // Filter products with quantity > 0
    final filteredProducts =
        cart.products.where((product) => product.quantity > 0).toList();

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: filteredProducts.isEmpty
                  ? Center(
                      child: Text(
                        'No items available ',
                        style: AppTextStyles.gray14Regular,
                      ),
                    )
                  : ListView.builder(
                      itemCount: filteredProducts.length,
                      itemBuilder: (context, index) {
                        final product = filteredProducts[index];
                        return CartProductItem(cartProduct: product);
                      },
                    ),
            ),
            const Divider(),
            SizedBox(height: 16.h),
            PaymentSection(),
            SizedBox(height: 16.h),
            TotalSection(cart: cart),
            SizedBox(height: 100.h),
          ],
        ),
        const CartButton(),
      ],
    );
  }
}
