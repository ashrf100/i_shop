import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_consts.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/enum/sort_enum.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';

class SortOptionsBottomSheet extends StatefulWidget {
  const SortOptionsBottomSheet({super.key});

  @override
  _SortOptionsBottomSheetState createState() => _SortOptionsBottomSheetState();
}

class _SortOptionsBottomSheetState extends State<SortOptionsBottomSheet> {
  SortBy _selectedSortBy = SortBy.title;
  Sortorder _selectedSortorder = Sortorder.asc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _SortByOptions(
                  selectedSortBy: _selectedSortBy,
                  onSortByChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _selectedSortBy = value;
                      });
                    }
                  },
                ),
              ),
              Expanded(
                child: _OrderOptions(
                  selectedSortorder: _selectedSortorder,
                  onSortOrderChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _selectedSortorder = value;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
          _ActionButtons(
            onCancel: () => Navigator.pop(context),
            onApply: () {
              BlocProvider.of<HomeBloc>(context).add(
                ProductsBySortEvent(_selectedSortBy, _selectedSortorder),
              );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
  class _SortByOptions extends StatelessWidget {
    final SortBy selectedSortBy;
    final ValueChanged<SortBy?> onSortByChanged;

    const _SortByOptions({
      required this.selectedSortBy,
      required this.onSortByChanged,
    });

    @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: SortBy.values.map((sortBy) {
          return RadioListTile<SortBy>(
            activeColor: AppColors.gray,
            title: Text(
              sortBy.toString().split('.').last.toUpperCase(),
              style: AppTextStyles.darkGray14Regular,
            ),
            value: sortBy,
            groupValue: selectedSortBy,
            onChanged: onSortByChanged,
          );
        }).toList(),
      );
    }
  }

  class _OrderOptions extends StatelessWidget {
    final Sortorder selectedSortorder;
    final ValueChanged<Sortorder?> onSortOrderChanged;

    const _OrderOptions({
      required this.selectedSortorder,
      required this.onSortOrderChanged,
    });

    @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: Sortorder.values.map((order) {
          return RadioListTile<Sortorder>(
            contentPadding: EdgeInsets.zero,
            activeColor: AppColors.gray,
            title: Text(
              order.displayName,
              style: AppTextStyles.darkGray14Regular,
            ),
            value: order,
            groupValue: selectedSortorder,
            onChanged: onSortOrderChanged,
          );
        }).toList(),
      );
    }
  }

  class _ActionButtons extends StatelessWidget {
    final VoidCallback onCancel;
    final VoidCallback onApply;

    const _ActionButtons({
      required this.onCancel,
      required this.onApply,
    });

    @override
    Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onCancel,
            child: Text(AppConsts.cancelText, style: AppTextStyles.darkGray14Regular),
          ),
          TextButton(
            onPressed: onApply,
            child: Text(AppConsts.applyText, style: AppTextStyles.darkGray14Regular),
          ),
        ],
      );
    }
  }

