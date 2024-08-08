import 'package:flutter/material.dart';
import 'package:i_shop/bloc_providers.dart';
import 'package:i_shop/core/hepler/route_generator.dart';
import 'package:i_shop/core/widgets/bottom_nav_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IShop extends StatelessWidget {
  IShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      builder: (context, child) => const AppBlocProviders(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavBarWidget(),
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
