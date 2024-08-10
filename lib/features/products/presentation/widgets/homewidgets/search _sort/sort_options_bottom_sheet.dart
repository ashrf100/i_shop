import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
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
              Expanded(child: _buildSortByOptions()),
              Expanded(child: _buildOrderOptions()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel', style: AppTextStyles.darkgray14regular),
              ),
              TextButton(
                onPressed: () {
                  context.read<HomeBloc>().add(
                      ProductsBySortEvent(_selectedSortBy, _selectedSortorder));
                  Navigator.pop(context);
                },
                child: Text('Apply', style: AppTextStyles.darkgray14regular),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSortByOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: SortBy.values.map((sortBy) {
        return RadioListTile<SortBy>(
          activeColor: AppColors.gray,
          title: Text(
            sortBy.toString().split('.').last.toUpperCase(),
            style: AppTextStyles.darkgray14regular,
          ),
          value: sortBy,
          groupValue: _selectedSortBy,
          onChanged: (value) {
            if (value != null) {
              setState(() {
                _selectedSortBy = value;
              });
            }
          },
        );
      }).toList(),
    );
  }

  Widget _buildOrderOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: Sortorder.values.map((order) {
        return RadioListTile<Sortorder>(
          contentPadding: EdgeInsets.zero,
          activeColor: AppColors.gray,
          title: Text(
            order.displayName,
            style: AppTextStyles.darkgray14regular,
          ),
          value: order,
          groupValue: _selectedSortorder,
          onChanged: (value) {
            if (value != null) {
              setState(() {
                _selectedSortorder = value;
              });
            }
          },
        );
      }).toList(),
    );
  }
}
