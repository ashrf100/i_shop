import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/routing/route_generator.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/cubit/bottom_nav_cubit_cubit.dart';
import 'package:i_shop/features/auth/presentation/pages/login_page.dart';
import 'package:i_shop/injection_container.dart' as di;
import 'package:i_shop/features/auth/presentation/bloc/login_bloc.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_event.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_event.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';

class IShop extends StatelessWidget {
  const IShop({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBlocProviders(
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(360, 690),
        builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: WelcomePage(),
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}

class AppBlocProviders extends StatelessWidget {
  final Widget child;

  const AppBlocProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<BottomNavCubit>(),
        ),
        BlocProvider(
          create: (context) =>
              di.sl<LoginBloc>()..add(const LoginEvent.loginInit()),
        ),
        BlocProvider(
          create: (context) =>
              di.sl<CartBloc>()..add(const CartEvent.loadCart(50)),
        ),
        BlocProvider(
          create: (context) =>
              di.sl<FavoritesBloc>()..add(const FavoritesEvent.loadFavorites()),
        ),
        BlocProvider(
          create: (context) => di.sl<HomeBloc>()..add(const HomeEvent.init()),
        ),
      ],
      child: child,
    );
  }
}
