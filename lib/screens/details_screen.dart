import 'package:flutter/material.dart';
import 'package:movie_app/datas/movies.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/models/movie_genre.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';
import 'package:movie_app/widgets/display_ranking.dart';
import 'package:movie_app/widgets/distribution_item.dart';

class DetailsScreen extends StatefulWidget {
  final String id;
  const DetailsScreen({super.key, required this.id});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final double _headerHeightRatio = 1 / 3;
  final double _movieDistributionListHeight = 100;
  late Movie _movie;
  late List<MovieGenre> _movieGenres;

  @override
  void initState() {
    _movie = allMovies.firstWhere((elt) => elt.id == widget.id);
    _movieGenres = genres
        .where((elt) => _movie.genres.contains(elt.id))
        .toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: constraints.maxHeight * _headerHeightRatio,
                  actions: [
                    IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      _movie.images.first,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: AppSizes.md),
                        Text(_movie.title, style: context.texte.headlineLarge),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${_movie.releaseYear} . ${_movie.duration} . ${_movieGenres.join(' , ')}',
                            ),
                            DisplayRanking(ranking: _movie.ranking),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: AppSizes.md),
                          child: Divider(),
                        ),
                        Text('Synopsis', style: context.texte.titleLarge),
                        SizedBox(height: AppSizes.sm),
                        Text(_movie.synopsis),
                        Padding(
                          padding: const EdgeInsets.only(top: AppSizes.md),
                          child: Divider(),
                        ),
                        Text('Realisateur', style: context.texte.titleLarge),
                        SizedBox(height: AppSizes.lg),
                        Row(
                          spacing: AppSizes.sm,
                          children: [Icon(Icons.person), Text(_movie.director)],
                        ),
                        SizedBox(height: AppSizes.xl),
                        Text('Distribution', style: context.texte.titleLarge),
                        SizedBox(height: AppSizes.md),
                        SizedBox(
                          height: _movieDistributionListHeight,
                          child: Center(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _movie.distribution.length,
                              itemBuilder: (context, index) {
                                final actor = actors.firstWhere(
                                  (elt) => elt.id == _movie.distribution[index],
                                );
                                return DistributionItem(actor: actor);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
