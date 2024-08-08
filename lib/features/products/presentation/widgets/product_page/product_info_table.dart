import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/features/products/data/models/products_model.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart'; // Import AppProduct class

class ProductInfoTable extends StatelessWidget {
  final AppProduct product; // Change to AppProduct

  const ProductInfoTable({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Table(
        columnWidths: {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(2),
        },
        children: [
          _buildTableRow(
              'Warranty',
              product
                  .warrantyInformation), // Access warrantyInformation directly
          _buildTableRow(
              'Shipping',
              product
                  .shippingInformation), // Access shippingInformation directly
          _buildTableRow('Return Policy',
              product.returnPolicy), // Access returnPolicy directly
          _buildTableRow('Brand', product.brand), // Access brand directly
          _buildTableRow('SKU', product.sku), // Access sku directly
        ],
      ),
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Text(
            '$label:',
            style: AppTextStyles.darkgray12regular
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Text(
            value,
            style: AppTextStyles.darkgray12regular,
          ),
        ),
      ],
    );
  }
}
