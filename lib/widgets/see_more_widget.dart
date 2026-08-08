import 'package:flutter/material.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';

class SeeMoreWidget extends StatelessWidget {
  final String title;
  final String seeMore;
  const SeeMoreWidget({
    super.key,
    required this.title,
    this.seeMore = 'Voir tout',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: context.texte.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSizes.sm),
        Text(
          seeMore,
          textAlign: TextAlign.start,
          style: context.texte.titleMedium,
        ),
      ],
    );
  }
}
