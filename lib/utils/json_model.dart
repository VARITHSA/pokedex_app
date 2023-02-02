class Data {
  int? id;
  String? name;
  String? age;
  String? abilities;
  String? type;
  Data({
    this.id,
    this.name,
    this.age,
    this.abilities,
    this.type,
  });
  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    age = json['age'];
    abilities = json['abilities'];
    type = json['type'];
  }
}
