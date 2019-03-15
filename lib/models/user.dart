class User {
  final int id;
  final String userName;
  final String name;

  User({this.id, this.userName, this.name});

  factory User.fromJson(Map<String, dynamic> json){
      return User(
        id: json["id"],
        userName: json["userName"],
        name: json["name"]);
  }
}