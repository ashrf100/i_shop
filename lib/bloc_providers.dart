import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'injection_container.dart' as di;

class AppBlocProviders extends StatelessWidget {
  final Widget child;

  const AppBlocProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.sl<HomeBloc>()),
      ],
      child: child,
    );
  }
}
