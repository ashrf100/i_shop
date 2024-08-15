import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
class ProductInfoTable extends StatelessWidget {
  final AppProduct product;

  const ProductInfoTable({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(2),
        },
        children: [
          _buildTableRow(
              'Warranty',
              product
                  .warrantyInformation), 
          _buildTableRow(
              'Shipping',
              product
                  .shippingInformation),
          _buildTableRow('Return Policy',
              product.returnPolicy), 
          _buildTableRow('Brand', product.brand), 
          _buildTableRow('SKU', product.sku), 
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
            style: AppTextStyles.darkGray14Regular
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Text(
            value,
            style: AppTextStyles.darkGray14Regular,
          ),
        ),
      ],
    );
  }
}
