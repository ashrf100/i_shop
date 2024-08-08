import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart'; // Import AppProduct class

class ProductDescription extends StatelessWidget {
  final AppProduct product; // Change to AppProduct

  const ProductDescription({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: AppTextStyles.darkGray16bold,
          ),
          SpacerWidget.vertical(height: 8.h),
          Text(
            product.description, // Access description directly
            style: AppTextStyles.darkgray14regular,
          ),
          SpacerWidget.vertical(height: 16.h),
          Text(
            'Stock: ${product.stock} left', // Access stock directly
            style: AppTextStyles.darkgray14regular.copyWith(
              color: product.availabilityStatus == 'Low Stock'
                  ? Colors.red
                  : Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
