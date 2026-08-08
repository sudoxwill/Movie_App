import 'package:movie_app/models/movie.dart';
import 'package:movie_app/models/movie_actor.dart';
import 'package:movie_app/models/movie_genre.dart';

// --- LISTE DE TOUS LES GENRES UNIQUE ---
final List<MovieGenre> genres = [
  MovieGenre(id: "1", label: "Science-Fiction"),
  MovieGenre(id: "2", label: "Aventure"),
  MovieGenre(id: "3", label: "Thriller"),
  MovieGenre(id: "4", label: "Action"),
  MovieGenre(id: "5", label: "Crime"),
  MovieGenre(id: "6", label: "Historique"),
  MovieGenre(id: "7", label: "Drame"),
  MovieGenre(id: "8", label: "Romance"),
  MovieGenre(id: "9", label: "Animation"),
  MovieGenre(id: "13", label: "Famille"),
];

// --- LISTE DE TOUS LES ACTEURS UNIQUE ---
final List<MovieActor> actors = [
  MovieActor(
    id: "1",
    name: "Matthew McConaughey",
    image: "https://image.tmdb.org/t/p/w500/3Xjv9wV2Rr3aZ7hJjJx7.jpg",
  ),
  MovieActor(
    id: "2",
    name: "Anne Hathaway",
    image: "https://image.tmdb.org/t/p/w500/tLelKoPNiyJCSEtQTz1FGv4TLGc.jpg",
  ),
  MovieActor(
    id: "3",
    name: "Robert Downey Jr.",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/0/0c/Robert_Downey_Jr_2014.jpg",
  ),
  MovieActor(
    id: "4",
    name: "Tom Holland",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/7/73/Tom_Holland_2022.jpg",
  ),
  MovieActor(
    id: "5",
    name: "Leonardo DiCaprio",
    image: "https://image.tmdb.org/t/p/w500/wo2hJpn04vbtmh0B9utCFdsQhxM.jpg",
  ),
  MovieActor(
    id: "6",
    name: "Joseph Gordon-Levitt",
    image: "https://image.tmdb.org/t/p/w500/z2FA8js799xQtUn0fT2Zco1svJZ.jpg",
  ),
  MovieActor(
    id: "7",
    name: "Cillian Murphy",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/7/7c/Cillian_Murphy_Cannes_2023.png",
  ),
  MovieActor(
    id: "8",
    name: "Christian Bale",
    image: "https://image.tmdb.org/t/p/w500/qCpZn2e3dimwbryLnqxZuI88PTi.jpg",
  ),
  MovieActor(
    id: "9",
    name: "Heath Ledger",
    image: "https://image.tmdb.org/t/p/w500/5Y9HnYYa9jF4NunY9lSgJGjSe8E.jpg",
  ),
  MovieActor(
    id: "10",
    name: "Anthony Gonzalez",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/5/5d/Anthony_Gonzalez_2017.jpg",
  ),
  MovieActor(
    id: "11",
    name: "Russell Crowe",
    image: "https://image.tmdb.org/t/p/w500/c0Q4vJ1Qw7l0Jj0M8g7x8p7c7x.jpg",
  ),
  MovieActor(
    id: "12",
    name: "Joaquin Phoenix",
    image: "https://image.tmdb.org/t/p/w500/iaG1V5QnZb0Z0y9W4h6j6.jpg",
  ),
  MovieActor(
    id: "13",
    name: "Tom Hanks",
    image: "https://image.tmdb.org/t/p/w500/a14CNs6gWz1y5k8Jk3sVQ.jpg",
  ),
  MovieActor(
    id: "14",
    name: "Robin Wright",
    image: "https://image.tmdb.org/t/p/w500/7Yy9mX7Z4n5L4V7z.jpg",
  ),
  MovieActor(
    id: "15",
    name: "Amy Poehler",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/8/86/Amy_Poehler_2014.jpg",
  ),
  MovieActor(
    id: "16",
    name: "Matthew Broderick",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/8/8c/Matthew_Broderick_2011.jpg",
  ),
  MovieActor(
    id: "17",
    name: "Jessica Chastain",
    image: "https://image.tmdb.org/t/p/w500/lQw1XEsQv9V8J2N4P9mJ4P6xQ.jpg",
  ),
  MovieActor(
    id: "18",
    name: "Matt Damon",
    image: "https://image.tmdb.org/t/p/w500/At3JgvaNeEN4Z4ESKlhhes85Xo3.jpg",
  ),
  MovieActor(
    id: "19",
    name: "Michael Caine",
    image: "https://image.tmdb.org/t/p/w500/7v6J0jL4KjNQ8qjQhR0R4.jpg",
  ),
  MovieActor(
    id: "20",
    name: "Elliot Page",
    image: "https://image.tmdb.org/t/p/w500/9jY6lSeXfhBF3nf6tDr7guPmyAn.jpg",
  ),
  MovieActor(
    id: "21",
    name: "Tom Hardy",
    image: "https://image.tmdb.org/t/p/w500/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg",
  ),
  MovieActor(
    id: "22",
    name: "Ken Watanabe",
    image: "https://image.tmdb.org/t/p/w500/ps9WUW7wP4iL0jM4r2f9i.jpg",
  ),
  MovieActor(
    id: "23",
    name: "Gary Oldman",
    image: "https://image.tmdb.org/t/p/w500/2v9FVVBUrrkW2m3QOcYkuhq9A6o.jpg",
  ),
  MovieActor(
    id: "24",
    name: "Aaron Eckhart",
    image: "https://image.tmdb.org/t/p/w500/7HfB5kQb6Qx4xG3k.jpg",
  ),
  MovieActor(
    id: "25",
    name: "Connie Nielsen",
    image: "https://image.tmdb.org/t/p/w500/r0i1wQ1m0B.jpg",
  ),
  MovieActor(
    id: "26",
    name: "Djimon Hounsou",
    image: "https://image.tmdb.org/t/p/w500/yM6Q5S.jpg",
  ),
  MovieActor(
    id: "27",
    name: "Gary Sinise",
    image: "https://image.tmdb.org/t/p/w500/4wM.jpg",
  ),
  MovieActor(
    id: "28",
    name: "Sally Field",
    image: "https://image.tmdb.org/t/p/w500/vz2.jpg",
  ),
  MovieActor(
    id: "29",
    name: "Emily Blunt",
    image: "https://image.tmdb.org/t/p/w500/5vl5.jpg",
  ),
  MovieActor(
    id: "30",
    name: "Florence Pugh",
    image: "https://image.tmdb.org/t/p/w500/6Sj.jpg",
  ),
  MovieActor(
    id: "31",
    name: "Robert Downey Jr.",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/0/0c/Robert_Downey_Jr_2014.jpg",
  ),
  MovieActor(
    id: "32",
    name: "Benedict Cumberbatch",
    image: "https://image.tmdb.org/t/p/w500/fBEucxECxGLKVHBznO0qHtCGiMO.jpg",
  ),
  MovieActor(
    id: "33",
    name: "Chris Evans",
    image: "https://image.tmdb.org/t/p/w500/3bOGNsHlrswhyW79uvIHH1V43JI.jpg",
  ),
  MovieActor(
    id: "34",
    name: "Scarlett Johansson",
    image: "https://image.tmdb.org/t/p/w500/6NsMbJXRlDZuDzatN2akFdGuTvx.jpg",
  ),
  MovieActor(
    id: "35",
    name: "Chris Hemsworth",
    image: "https://image.tmdb.org/t/p/w500/jpurJ9jAcLCYjgHHfYF32m3zJYm.jpg",
  ),
  MovieActor(
    id: "36",
    name: "Zendaya",
    image: "https://image.tmdb.org/t/p/w500/tylFh0KAm.jpg",
  ),
  MovieActor(
    id: "37",
    name: "Benedict Wong",
    image: "https://image.tmdb.org/t/p/w500/oJ.jpg",
  ),
  MovieActor(
    id: "38",
    name: "Jacob Batalon",
    image: "https://image.tmdb.org/t/p/w500/eY.jpg",
  ),
  MovieActor(
    id: "39",
    name: "Tina Fey",
    image: "https://image.tmdb.org/t/p/w500/lN.jpg",
  ),
  MovieActor(
    id: "40",
    name: "Bill Hader",
    image: "https://image.tmdb.org/t/p/w500/2B.jpg",
  ),
  MovieActor(
    id: "41",
    name: "Lewis Black",
    image: "https://image.tmdb.org/t/p/w500/rG.jpg",
  ),
  MovieActor(
    id: "42",
    name: "Phyllis Smith",
    image: "https://image.tmdb.org/t/p/w500/yP.jpg",
  ),
  MovieActor(
    id: "43",
    name: "Jeremy Irons",
    image: "https://image.tmdb.org/t/p/w500/iS.jpg",
  ),
  MovieActor(
    id: "44",
    name: "James Earl Jones",
    image: "https://image.tmdb.org/t/p/w500/vE.jpg",
  ),
  MovieActor(
    id: "45",
    name: "Nathan Lane",
    image: "https://image.tmdb.org/t/p/w500/qP.jpg",
  ),
  MovieActor(
    id: "46",
    name: "Ernie Sabella",
    image: "https://image.tmdb.org/t/p/w500/kL.jpg",
  ),
];

// --- LISTES DE FILMS MISES À JOUR ---
final List<Movie> newMovies = [
  Movie(
    title: "Interstellar",
    releaseYear: "2014",
    duration: "2h49",
    genres: ["1", "2"],
    ranking: 8.6,
    synopsis:
        "Un groupe d'explorateurs voyage à travers un trou de ver afin de sauver l'humanité.",
    director: "Christopher Nolan",
    distribution: ["1", "2", "17", "18", "19"],
    images: [
      "https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",
      "https://image.tmdb.org/t/p/original/xJHokMbljvjADYdit5fK5VQsXEG.jpg",
    ],
    isAssetsImage: false,
  ),
  Movie(
    title: "Inception",
    releaseYear: "2010",
    duration: "2h28",
    genres: ["1", "3"],
    ranking: 8.8,
    synopsis:
        "Un voleur spécialisé dans l'extraction de secrets via les rêves accepte une mission d'inception.",
    director: "Christopher Nolan",
    distribution: ["5", "6", "20", "21", "22"],
    images: [
      "https://image.tmdb.org/t/p/w500/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg",
      "https://image.tmdb.org/t/p/original/8ZTVqvKDQ8emSGUEMjsS4yHAwrp.jpg",
    ],
    isAssetsImage: false,
  ),
  Movie(
    title: "The Dark Knight",
    releaseYear: "2008",
    duration: "2h32",
    genres: ["4", "5"],
    ranking: 9.0,
    synopsis:
        "Batman affronte le Joker, un criminel imprévisible qui plonge Gotham dans le chaos.",
    director: "Christopher Nolan",
    distribution: ["8", "9", "19", "23", "24"],
    images: ["https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg"],
    isAssetsImage: false,
  ),
  Movie(
    title: "Gladiator",
    releaseYear: "2000",
    duration: "2h35",
    genres: ["4", "6"],
    ranking: 8.5,
    synopsis:
        "Un général romain trahi devient gladiateur afin de se venger de l'empereur.",
    director: "Ridley Scott",
    distribution: ["11", "12", "25", "26", "18"],
    images: ["https://image.tmdb.org/t/p/w500/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg"],
    isAssetsImage: false,
  ),
  Movie(
    title: "Forrest Gump",
    releaseYear: "1994",
    duration: "2h22",
    genres: ["7", "8"],
    ranking: 8.8,
    synopsis:
        "L'histoire extraordinaire d'un homme simple qui traverse plusieurs décennies de l'histoire américaine.",
    director: "Robert Zemeckis",
    distribution: ["13", "14", "27", "28", "11"],
    images: ["https://image.tmdb.org/t/p/w500/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg"],
    isAssetsImage: false,
  ),
];

final List<Movie> movies = [
  Movie(
    title: "Oppenheimer",
    releaseYear: "2023",
    duration: "3h00",
    genres: ["7", "6"],
    ranking: 8.6,
    synopsis:
        "L'histoire de J. Robert Oppenheimer et de son rôle dans le développement de la bombe atomique.",
    director: "Christopher Nolan",
    distribution: ["7", "29", "30", "31", "18"],
    images: [
      "https://upload.wikimedia.org/wikipedia/en/4/4a/Oppenheimer_%28film%29.jpg",
    ],
    isAssetsImage: false,
  ),
  Movie(
    title: "Coco",
    releaseYear: "2017",
    duration: "1h45",
    genres: ["9", "13"],
    ranking: 8.4,
    synopsis:
        "Miguel, un jeune garçon passionné de musique, traverse le monde des morts pour découvrir l'histoire de sa famille.",
    director: "Lee Unkrich",
    distribution: ["10", "13", "15", "27", "28"],
    images: [
      "https://upload.wikimedia.org/wikipedia/en/9/98/Coco_%282017_film%29_poster.jpg",
    ],
    isAssetsImage: false,
  ),
  Movie(
    title: "Avengers: Endgame",
    releaseYear: "2019",
    duration: "3h01",
    genres: ["4", "1"],
    ranking: 8.4,
    synopsis:
        "Les Avengers restants tentent de réparer les conséquences du claquement de Thanos.",
    director: "Anthony Russo, Joe Russo",
    distribution: ["31", "33", "34", "35", "32"],
    images: [
      "https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg",
    ],
    isAssetsImage: false,
  ),
  Movie(
    title: "Spider-Man: No Way Home",
    releaseYear: "2021",
    duration: "2h28",
    genres: ["4", "2"],
    ranking: 8.2,
    synopsis:
        "Peter Parker demande de l'aide au Docteur Strange et provoque une rupture du multivers.",
    director: "Jon Watts",
    distribution: ["4", "36", "32", "37", "38"],
    images: [
      "https://upload.wikimedia.org/wikipedia/en/0/00/Spider-Man_No_Way_Home_poster.jpg",
    ],
    isAssetsImage: false,
  ),
  Movie(
    title: "Inside Out",
    releaseYear: "2015",
    duration: "1h35",
    genres: ["9", "13", "2"],
    ranking: 8.1,
    synopsis:
        "Dans l'esprit d'une jeune fille, cinq émotions tentent de guider sa vie alors qu'elle traverse un grand changement.",
    director: "Pete Docter",
    distribution: ["15", "39", "40", "41", "42"],
    images: [
      "https://upload.wikimedia.org/wikipedia/en/0/0a/Inside_Out_%282015_film%29_poster.jpg",
    ],
    isAssetsImage: false,
  ),
  Movie(
    title: "The Lion King",
    releaseYear: "1994",
    duration: "1h28",
    genres: ["9", "2"],
    ranking: 8.5,
    synopsis:
        "Simba, un jeune lion destiné à devenir roi, doit retrouver sa place dans le cycle de la vie.",
    director: "Roger Allers, Rob Minkoff",
    distribution: ["16", "44", "43", "45", "46"],
    images: [
      "https://upload.wikimedia.org/wikipedia/en/3/3d/The_Lion_King_poster.jpg",
    ],
    isAssetsImage: false,
  ),
];

final List<Movie> allMovies = [...movies, ...newMovies];
