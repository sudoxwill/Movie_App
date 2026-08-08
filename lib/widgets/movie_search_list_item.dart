import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/shared/constants/app_radius.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/widgets/display_ranking.dart';

final double movieSearchListItem = 130;

class MovieSearchListItem extends StatelessWidget {
  final Movie movie;
  final double maxWidth;
  const MovieSearchListItem({
    super.key,
    required this.movie,
    required this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.movieCardHeight,
      margin: EdgeInsets.only(bottom: AppSizes.xs),
      padding: EdgeInsets.symmetric(horizontal: AppSizes.sm),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: AppSizes.movieCardWidth,
                height: movieSearchListItem,
                decoration: BoxDecoration(
                  borderRadius: AppRadius.sm,
                  image: DecorationImage(
                    image: ResizeImage.resizeIfNeeded(
                      null,
                      AppSizes.cacheImageHeight,
                      NetworkImage(movie.images.first),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(),
              ),
              Spacer(),
              SizedBox(
                //TODO : Bon je laisse comme ça je reviendrais
                width: maxWidth <= 600 ? 100 : 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(movie.title, maxLines: AppSizes.textMaxLines),
                    Text('${movie.releaseYear}.${movie.duration}'),
                  ],
                ),
              ),
              Spacer(flex: 2),
              DisplayRanking(ranking: movie.ranking),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
