class MovieGenre {
  final String id;
  final String label;
  const MovieGenre({required this.id, required this.label});

  MovieGenre.fromJson(Map<String, dynamic> json)
    : label = json['label'],
      id = json['id'];

  Map<String, dynamic> toJson() => {'label': label, 'id': id};

  @override
  String toString() {
    return label;
  }
}
