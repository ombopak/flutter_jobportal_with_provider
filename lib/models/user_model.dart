class UserModel {
   String id;
   String email;
   String password;
   String name;
   String goal;

  UserModel({
    this.id,
    this.email,
    this.password,
    this.name,
    this.goal,
  });

  //Constructor from API
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    goal = json['goal'];
  }

  //method / function to convert UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'name': name,
      'goal': goal,

    };
  }

}