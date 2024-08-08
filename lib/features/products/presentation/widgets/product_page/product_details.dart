import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart'; // Import AppProduct class

class ProductDetails extends StatelessWidget {
  final AppProduct product; // Change to AppProduct
  final int quantity;
  final ValueChanged<int> onQuantityChanged;

  const ProductDetails({
    required this.product,
    required this.quantity,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title, // Access title directly
                      style: AppTextStyles.darkGray18bold,
                    ),
                    SpacerWidget.vertical(height: 4.h),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20.sp),
                        Text(
                          "${product.rating}".toString(), // Access rating directly
                          style: AppTextStyles.darkgray14regular,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              QuantitySelector(
                quantity: quantity,
                onQuantityChanged: onQuantityChanged,
              ),
            ],
          ),
          /*   Text(
            '\$${product.price}', // Access price directly
            style: AppTextStyles.black16bold.copyWith(color: Colors.green),
          ),
          SpacerWidget.vertical(height: 8.h),*/
        ],
      ),
    );
  }
}

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final ValueChanged<int> onQuantityChanged;

  const QuantitySelector({
    required this.quantity,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            if (quantity > 1) onQuantityChanged(quantity - 1);
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Text(
            quantity.toString(),
            style: AppTextStyles.darkGray16bold,
          ),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            onQuantityChanged(quantity + 1);
          },
        ),
      ],
    );
  }
}
