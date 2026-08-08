import 'package:flutter/material.dart';
import 'package:movie_app/datas/movies.dart';
import 'package:movie_app/shared/constants/app_colors.dart';
import 'package:movie_app/shared/constants/app_radius.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';

class FiltersWidget extends StatelessWidget {
  final List<String> filters;
  final Function(String) onToggleFilter;
  const FiltersWidget({
    super.key,
    required this.filters,
    required this.onToggleFilter,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: genres.length,
      itemBuilder: (context, index) {
        final genre = genres[index];
        return Padding(
          padding: EdgeInsets.only(right: AppSizes.sm, top: AppSizes.md),
          child: FilterChip(
            label: Text(
              genre.label,
              style: TextStyle(
                color: filters.contains(genre.label)
                    ? AppColors.lightAppBarBackground
                    : context.colorScheme.onSurface,
              ),
            ),
            shape: RoundedRectangleBorder(borderRadius: AppRadius.lg),
            selectedColor: AppColors.primaryColor,
            backgroundColor: context.colorScheme.surface,
            selected: filters.contains(genre.label),
            showCheckmark: false,
            onSelected: (value) {
              onToggleFilter(genre.label);
            },
          ),
        );
      },
    );
  }
}
