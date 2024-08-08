import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/enum/sort_enum.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_state.dart';

class HomeSearchSettingWidget extends StatelessWidget {
  const HomeSearchSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 5, child: CustomSearchField()),
          Expanded(child: SettingButton()),
        ],
      ),
    );
  }
}

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0),
      margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
            color: AppColors.lightGray.withOpacity(0.5), width: 0.5.w),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.search, color: AppColors.lightGray.withOpacity(0.5)),
          SpacerWidget.horizontal(width: 8.w),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Products ..',
                hintStyle: AppTextStyles.lightgray12normal,
                border: InputBorder.none,
              ),
              onSubmitted: (searchText) {
                BlocProvider.of<HomeBloc>(context)
                    .add(HomeEvent.productsBySearch(searchText));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SettingButton extends StatefulWidget {
  const SettingButton({super.key});

  @override
  _SettingButtonState createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {
  SortBy _selectedSortBy = SortBy.title;
  Sortorder _selectedSortorder = Sortorder.asc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showSortOptionsBottomSheet(context);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 35.h,
        decoration: BoxDecoration(
          color: AppColors.darkGray,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: const Icon(Icons.sort_rounded, color: Colors.white),
      ),
    );
  }

  void _showSortOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Sort Options',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16.0),
                  _buildSortByOptions(setState),
                  const SizedBox(height: 16.0),
                  _buildOrderOptions(setState),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 8.0),
                      ElevatedButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(ProductsBySortEvent(
                              _selectedSortBy, _selectedSortorder));

                          Navigator.pop(context);
                        },
                        child: const Text('Apply'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSortByOptions(StateSetter setState) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: SortBy.values.map((sortBy) {
        return RadioListTile<SortBy>(
          title: Text(sortBy.toString().split('.').last.toUpperCase()),
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

  Widget _buildOrderOptions(StateSetter setState) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: Sortorder.values.map((order) {
        return RadioListTile<Sortorder>(
          title: Text(order.toString().split('.').last.toUpperCase()),
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
