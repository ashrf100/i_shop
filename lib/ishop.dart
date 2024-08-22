import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/routing/route_generator.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_bloc.dart';
import 'package:i_shop/features/auth/presentation/pages/login_page.dart';
import 'package:i_shop/injection_container.dart' as di;

class IShop extends StatelessWidget {
  const IShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (context) => di.sl<LoginBloc>(),
          ),
          // Add other BlocProviders here if needed
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: WelcomePage(),
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
