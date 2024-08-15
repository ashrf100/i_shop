import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';

class TotalSection extends StatelessWidget {
  final AppCart cart;

  const TotalSection({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          TotalRow(
              label: 'Total (${cart.totalProducts} items)',
              amount: '\$${cart.total.toStringAsFixed(2)}'),
          const TotalRow(label: 'Shipping Fee', amount: '\$0.00'),
          const TotalRow(label: 'Discount', amount: '\$0.00'),
          const Divider(),
          TotalRow(
              label: 'Sub Total', amount: '\$${cart.total.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}

class TotalRow extends StatelessWidget {
  final String label;
  final String amount;

  const TotalRow({super.key, required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTextStyles.gray14Regular),
          Text(amount,
              style: AppTextStyles.darkGray14Regular
                  .copyWith(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
