import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/core/routing/route_generator.dart';
import 'package:i_shop/core/widgets/bottom_nav_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/injection_container.dart' as di;

class IShop extends StatelessWidget {
  IShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      builder: (context, child) => BlocProvider(
        create: (context) => di.sl<CartBloc>()..add(CartEvent.loadCart(50)),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavBarWidget(),
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
