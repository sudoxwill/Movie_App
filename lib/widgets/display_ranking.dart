import 'package:flutter/material.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';

class DisplayRanking extends StatelessWidget {
  final double ranking;
  final double outOf;
  const DisplayRanking({super.key, required this.ranking, this.outOf = 10});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: AppSizes.xs,
      children: [
        Icon(Icons.star, color: Colors.amber, size: AppSizes.md),
        Text('$ranking/${outOf.toInt()}'),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios, size: AppSizes.md),
          visualDensity: VisualDensity.compact,
        ),
      ],
    );
  }
}
