import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/shared/constants/app_alpha.dart';
import 'package:movie_app/shared/constants/app_radius.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';

class MovieWidgetItem extends StatelessWidget {
  final Movie movie;
  final String genre;
  const MovieWidgetItem({super.key, required this.movie, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSizes.md),
      child: SizedBox(
        width: AppSizes.movieCardWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => context.push('/movie/${movie.id}'),
              child: Container(
                width: AppSizes.movieCardWidth,
                height: AppSizes.movieCardHeight,
                decoration: BoxDecoration(
                  borderRadius: AppRadius.sm,
                  color: context.theme.scaffoldBackgroundColor,
                  image: DecorationImage(
                    image: ResizeImage.resizeIfNeeded(
                      null,
                      AppSizes.cacheImageHeight,
                      NetworkImage(movie.images.first),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              movie.title,
              maxLines: AppSizes.textMaxLines,
              style: context.texte.titleMedium,
            ),
            Text(
              genre,
              style: context.texte.bodySmall?.copyWith(
                color: context.colorScheme.onSurface.withAlpha(AppAlpha.high),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
