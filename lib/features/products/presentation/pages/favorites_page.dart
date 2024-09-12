import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_event.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_state.dart';
import 'package:i_shop/features/products/presentation/pages/home_page.dart';
import 'package:i_shop/features/products/presentation/widgets/favorite/favorites_body.dart';
import 'package:i_shop/features/products/presentation/widgets/favorite/favorites_header.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/loading_dialog.dart';
import 'package:i_shop/injection_container.dart' as di;

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late ScrollController _scrollController;
  late BuildContext _dialogContext;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() async {
    // Handle infinite scrolling if needed
  }

  void _showLoadingDialog() {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        _dialogContext = context;
        return const LoadingDialog();
      },
    );
  }

  void _hideLoadingDialog() {
    if (Navigator.canPop(_dialogContext)) {
      Navigator.of(_dialogContext).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: Stack(
            children: [
              Column(
                children: [
                  SpacerWidget.vertical(height: 5.h),
                  const FavoritesHeader(),
                  SpacerWidget.vertical(height: 15.h),
                  Expanded(
                    child: FavoritesBody(
                      scrollController: _scrollController,
                      showLoadingDialog: _showLoadingDialog,
                      hideLoadingDialog: _hideLoadingDialog,
                    ),
                  ),
                ],
              ),
              buildBackGround(),
            ],
          ),
        );
      },
    );
  }
}
