import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_bloc.dart';

import '../../../../../core/widgets/custom_cached_image.dart';
import '../../../../auth/presentation/bloc/login_state.dart';

class HomeWelcomeWidget extends StatelessWidget {
  const HomeWelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final user = state.maybeWhen(
          success: (user) => user,
          orElse: () => null,
        );
        return Container(
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpacerWidget.vertical(height: 5.h),
                    Expanded(
                      child: Text(
                        "Hello , Welcome",
                        style: AppTextStyles.lightGray14Regular,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        user!.name.toString(),
                        style: AppTextStyles.darkGray16Bold,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: CircleAvatar(
                    radius: 20.r,
                    child: CustomCachedImage(
                      imageUrl: user.image.toString(),
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }
}
