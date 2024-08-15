import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';
import 'package:shimmer/shimmer.dart';

class CategoryItemWidget extends StatelessWidget {
  final AppCategory category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItemWidget({
    Key? key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: isSelected
            ? EdgeInsets.symmetric(horizontal: 20.w)
            : EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.grey[300],
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10.r,
                  ),
                ]
              : [],
        ),
        child: Row(
          children: [
            Icon(
              Icons.smart_display,
              color: isSelected ? Colors.white : Colors.black,
            ),
            SpacerWidget.horizontal(width: 8.w),
            Text(
              _formatCategoryName(category.title ?? ''),
              style: isSelected
                  ? AppTextStyles.white14Regular
                  : AppTextStyles.darkGray14Regular,
            ),
          ],
        ),
      ),
    );
  }

  String _formatCategoryName(String category) {
    return category
        .replaceAll('-', ' ')
        .split(' ')
        .map((word) => '${word[0].toUpperCase()}${word.substring(1)}')
        .join(' ');
  }
}

class CategoryItemShimmer extends StatelessWidget {
  const CategoryItemShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 30.h,
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10.r,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 24.w,
                height: 24.h,
                margin: EdgeInsets.all(8.w),
                color: Colors.grey,
              ),
              Expanded(
                child: Container(
                  height: 20.h,
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
