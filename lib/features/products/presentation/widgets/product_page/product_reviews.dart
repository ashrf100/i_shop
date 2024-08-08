import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/data/models/products_model.dart';

class ProductReviews extends StatefulWidget {
  final List<Review> reviews;

  const ProductReviews({required this.reviews});

  @override
  _ProductReviewsState createState() => _ProductReviewsState();
}

class _ProductReviewsState extends State<ProductReviews> {
  late List<bool> _expandedReviews;

  @override
  void initState() {
    super.initState();
    _expandedReviews = List<bool>.filled(widget.reviews.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reviews',
            style: AppTextStyles.darkGray16bold,
          ),
          SpacerWidget.vertical(height: 8.h),
          ...widget.reviews.asMap().entries.map<Widget>((entry) {
            int index = entry.key;
            Review review = entry.value;
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _expandedReviews[index] = !_expandedReviews[index];
                      });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20.sp),
                        SpacerWidget.horizontal(width: 8.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      review
                                          .reviewerName, // Access property directly
                                      style: AppTextStyles.darkgray14regular
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Icon(
                                    _expandedReviews[index]
                                        ? Icons.arrow_drop_up
                                        : Icons.arrow_drop_down,
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                              SpacerWidget.vertical(height: 4.h),
                              Row(
                                children: List.generate(
                                  5,
                                  (starIndex) => Icon(
                                    Icons.star,
                                    color: starIndex < review.rating
                                        ? Colors.amber
                                        : Colors.grey,
                                    size: 16.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_expandedReviews[index])
                    Padding(
                      padding: EdgeInsets.only(top: 4.h, left: 28.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            review.comment, // Access property directly
                            style: AppTextStyles.darkgray12regular,
                          ),
                          SpacerWidget.vertical(height: 4.h),
                          Text(
                            'Rating: ${review.rating}', // Access property directly
                            style: AppTextStyles.darkgray12regular,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
