import 'package:go_router/go_router.dart';
import 'package:movie_app/screens/add_movie_screen.dart';
import 'package:movie_app/screens/details_screen.dart';
import 'package:movie_app/skeleton.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => Skeleton()),
    GoRoute(path: '/add_movie', builder: (context, state) => AddMovieScreen()),
    GoRoute(
      path: '/movie/:id',
      builder: (context, state) {
        final id = state.pathParameters['id'];
        return DetailsScreen(id: id!);
      },
    ),
  ],
);
