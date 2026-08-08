import 'package:flutter/material.dart';
import 'package:movie_app/shared/constants/app_colors.dart';
import 'package:movie_app/shared/constants/app_radius.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';

class FeaturedMovie extends StatelessWidget {
  final double width;
  final String title;
  final String subtitle;
  final String backgroundImage;
  const FeaturedMovie({
    super.key,
    required this.width,
    this.title = 'THE BATMAN',
    this.subtitle = 'En salles maintenant',
    this.backgroundImage = 'assets/images/features.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,

          height: AppSizes.featuredMovieHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            ),
            borderRadius: AppRadius.md,
          ),
          child: Center(),
        ),

        Container(
          width: width,
          height: AppSizes.featuredMovieHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black54, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: AppRadius.md,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.md,
              vertical: AppSizes.sm,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.texte.titleMedium?.copyWith(
                    color: AppColors.lightBackground,
                  ),
                ),
                Text(
                  subtitle,
                  style: context.texte.bodyLarge?.copyWith(
                    color: AppColors.lightBackground,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
