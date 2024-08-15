import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class LoadingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Number of shimmer placeholders
              itemBuilder: (context, index) {
                return _ShimmerCartProductItem();
              },
            ),
          ),
          const Divider(),
          SizedBox(height: 16.h),
          _ShimmerPaymentSection(),
          SizedBox(height: 16.h),
          _ShimmerTotalSection(),
          SizedBox(height: 100.h),
        ],
      ),
      _ShimmerCartButton(),
    ]);
  }
}

class _ShimmerCartProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 100.h,
        padding: EdgeInsets.all(16.0.w),
        child: Row(
          children: [
            _ShimmerProductImage(),
            SizedBox(width: 16.w),
            Expanded(child: _ShimmerProductDetails()),
          ],
        ),
      ),
    );
  }
}

class _ShimmerProductImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.w,
      child: Container(
        color: Colors.grey,
      ),
    );
  }
}

class _ShimmerProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ShimmerTitleAndSubtitle(),
        SizedBox(height: 8.h),
        Expanded(child: _ShimmerPriceAndQuantity()),
      ],
    );
  }
}

class _ShimmerTitleAndSubtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey,
              width: 150.w,
              height: 16.h,
            ),
            SizedBox(height: 4.h),
            Container(
              color: Colors.grey,
              width: 100.w,
              height: 14.h,
            ),
          ],
        ),
        Container(
          color: Colors.grey,
          width: 24.w,
          height: 24.h,
        ),
      ],
    );
  }
}

class _ShimmerPriceAndQuantity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.grey,
          width: 80.w,
          height: 16.h,
        ),
        Container(
          color: Colors.grey,
          width: 80.w,
          height: 16.h,
        ),
      ],
    );
  }
}

class _ShimmerPaymentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey,
              width: 150.w,
              height: 20.h,
            ),
            SizedBox(height: 16.h),
            Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0.r),
              ),
              child: Row(
                children: [
                  Container(
                    color: Colors.grey,
                    width: 32.r,
                    height: 32.r,
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.grey,
                          width: 100.w,
                          height: 16.h,
                        ),
                        SizedBox(height: 4.h),
                        Container(
                          color: Colors.grey,
                          width: 120.w,
                          height: 14.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: 32.r,
                    height: 32.r,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShimmerTotalSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            _ShimmerTotalRow(),
            _ShimmerTotalRow(),
            _ShimmerTotalRow(),
            const Divider(),
            _ShimmerTotalRow(),
          ],
        ),
      ),
    );
  }
}

class _ShimmerTotalRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.grey,
            width: 150.w,
            height: 16.h,
          ),
          Container(
            color: Colors.grey,
            width: 80.w,
            height: 16.h,
          ),
        ],
      ),
    );
  }
}

class _ShimmerCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0.h,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 300.w,
          height: 50.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey,
                width: 100.w,
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
