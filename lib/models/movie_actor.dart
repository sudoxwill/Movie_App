class MovieActor {
  final String id;
  final String name;
  final String image;

  MovieActor({required this.id, required this.name, required this.image});

  MovieActor.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      image = json['image'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'image': image};

  @override
  String toString() {
    return name;
  }
}
