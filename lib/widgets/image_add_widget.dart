import 'package:flutter/material.dart';
import 'package:movie_app/shared/constants/app_alpha.dart';
import 'package:movie_app/shared/constants/app_colors.dart';
import 'package:movie_app/shared/constants/app_radius.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';

class ImageAddWidget extends StatelessWidget {
  const ImageAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.sm,
      children: [
        Center(
          child: InkWell(
            onTap: () {},
            child: Container(
              width: AppSizes.movieCardHeight,
              height: AppSizes.movieCardHeight,
              decoration: BoxDecoration(
                color: AppColors.lightAppBarBackground.withAlpha(
                  AppAlpha.lightScrim,
                ),
                borderRadius: AppRadius.sm,
                border: Border.all(
                  color: context.colorScheme.onSurface.withAlpha(
                    AppAlpha.subtle,
                  ),
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: context.colorScheme.onSurface.withAlpha(
                    AppAlpha.medium,
                  ),
                  child: Icon(Icons.add, color: context.colorScheme.surface),
                ),
              ),
            ),
          ),
        ),
        Text('Ajouter une image'),
      ],
    );
  }
}
