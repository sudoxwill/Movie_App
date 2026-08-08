import 'package:flutter/material.dart';
import 'package:movie_app/datas/movies.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/widgets/custom_text_field.dart';
import 'package:movie_app/widgets/filters_widget.dart';
import 'package:movie_app/widgets/movie_search_list_item.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  final List<String> _filters = [];
  final double _movieFiltersHeight = 60;

  void _toggleFilter(String filter) {
    if (!_filters.contains(filter)) {
      _filters.add(filter);
    } else {
      _filters.remove(filter);
    }
    setState(() {});
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
                  title: Text('Films'),
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
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_alt_outlined),
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.md,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: AppSizes.md),
                        CustomTextField(hintText: 'Rechercher un film...'),
                        SizedBox(
                          height: _movieFiltersHeight,
                          child: FiltersWidget(
                            filters: _filters,
                            onToggleFilter: _toggleFilter,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
                  sliver: SliverList.builder(
                    itemCount: allMovies.length,
                    itemBuilder: (context, index) {
                      final movie = allMovies[index];
                      return MovieSearchListItem(
                        movie: movie,
                        maxWidth: constraints.maxWidth,
                      );
                    },
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
