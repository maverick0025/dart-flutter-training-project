
import 'dart:convert';

class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  Map<String, dynamic> toJson(){

    return {
      'id': id,
      'name': name,
      'email': email
    };
  }

  String toJsonString() => jsonEncode(toJson());
}

void main(){

  User user = User (id: 23, name: "john", email: "john@gmail.com");
  var jsonOutput = user.toJson();
  print(jsonOutput);

  User user2 = User(id: 90, name: "Aemond", email: "aemond@hotd.com");
  print("user: ${user2.toJson()}");

  print(user.toJsonString());
}