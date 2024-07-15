class Character {
  late int id;
  late String name;
  late String image;
  late List<dynamic> episode;
  late String statusIfDeadOrAlive;
  late String gender;
  late String species;

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    episode = json['episode'];
    statusIfDeadOrAlive = json['status'];
    gender = json['gender'];
    species = json['species'];
  }
}
