import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_actor.dart';
import 'package:movie_app/shared/constants/app_alpha.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';

final double circleRadius = 25;

class DistributionItem extends StatelessWidget {
  final MovieActor actor;
  const DistributionItem({super.key, required this.actor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSizes.md),
      child: Column(
        spacing: AppSizes.sm,
        children: [
          CircleAvatar(
            backgroundColor: context.colorScheme.onSurface.withAlpha(
              AppAlpha.medium,
            ),
            backgroundImage: NetworkImage(actor.image),
            radius: circleRadius,
          ),
          Text(actor.name),
        ],
      ),
    );
  }
}
