import 'package:flutter/material.dart';
import 'package:movie_app/datas/movies.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';
import 'package:movie_app/widgets/featured_movie.dart';
import 'package:movie_app/widgets/movie_widget_item.dart';
import 'package:movie_app/widgets/see_more_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (innerContext) {
            return IconButton(
              onPressed: () {
                Scaffold.of(innerContext).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
        actions: [
          if (context.isDark)
            Padding(
              padding: const EdgeInsets.all(AppSizes.sm),
              child: Icon(Icons.dark_mode),
            ),
          if (!context.isDark)
            Padding(
              padding: const EdgeInsets.all(AppSizes.sm),
              child: Icon(Icons.light_mode),
            ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
            child: SizedBox(
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SizedBox(height: AppSizes.md),
                    Text(
                      'Bienvenue 👏',
                      textAlign: TextAlign.start,
                      style: context.texte.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: AppSizes.sm),
                    Text(
                      'Découvrez les meilleurs films',
                      textAlign: TextAlign.start,
                      style: context.texte.titleMedium,
                    ),
                    SizedBox(height: AppSizes.md),
                    FeaturedMovie(width: constraints.maxWidth),
                    SizedBox(height: AppSizes.xl),
                    SeeMoreWidget(title: 'Films populaires'),
                    SizedBox(height: AppSizes.lg),
                    SizedBox(
                      height: AppSizes.movieListViewHeight,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) => MovieWidgetItem(
                          movie: movies[index],
                          genre: genres
                              .firstWhere(
                                (elt) => movies[index].genres.contains(elt.id),
                              )
                              .label,
                        ),
                      ),
                    ),

                    SizedBox(height: AppSizes.lg),
                    SeeMoreWidget(title: 'Nouveautés'),
                    SizedBox(height: AppSizes.xl),

                    SizedBox(
                      height: AppSizes.movieListViewHeight,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: newMovies.length,
                        itemBuilder: (context, index) => MovieWidgetItem(
                          movie: newMovies[index],
                          genre: genres
                              .firstWhere(
                                (elt) =>
                                    newMovies[index].genres.contains(elt.id),
                              )
                              .label,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
