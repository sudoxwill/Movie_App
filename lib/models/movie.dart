import 'package:uuid/uuid.dart';

class Movie {
  final String id;
  final String title;
  final String releaseYear;
  final String duration;
  final List<String> genres;
  final double ranking;
  final String synopsis;
  final String director;
  final List<String> distribution;
  final List<String> images;
  bool isAssetsImage;

  Movie({
    required this.title,
    required this.releaseYear,
    required this.duration,
    required this.genres,
    required this.ranking,
    required this.synopsis,
    required this.director,
    required this.distribution,
    required this.images,
    this.isAssetsImage = false,
  }) : id = Uuid().v4();

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    title: json['title'],
    releaseYear: json['release_year'],
    duration: json['duration'],
    genres: json['genre'],
    ranking: json['ranking'],
    synopsis: json['synopsis'],
    director: json['director'],
    distribution: json['distribution'],
    images: json['images'],
  );

  Map<String, dynamic> toJson() => {
    'title': title,
    'releaseYear': releaseYear,
    'duration': duration,
    'genre': genres,
    'ranking': ranking,
    'synopsis': synopsis,
    'director': director,
    'distribution': distribution,
    'images': images,
  };
}
