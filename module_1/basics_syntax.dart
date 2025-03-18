import 'dart:convert';

class User{

  int? id;
  String? name;
  String? email;

  // User(){
  //   id = 1;
  //   name = "abc";
  //   email = "abc@gmail.com";
  // }

  User({this.id, this.name, this.email});

  Map<String, dynamic> toJson() {

    Map<String, dynamic> map = new Map<String, dynamic>();
    map["id"] = id;
    map["name"] = name;
    map["email"] = email;

    return map;  
  
  }
  
}

void main(){

User user = new User(id: 32, name: "John");
var jsonOutput = user.toJson();
print(jsonOutput.runtimeType);
print(jsonOutput);

User user2 = new User(id: 90, name: "amond",  email: "delta@outlook.com");
print("user2 : ${user2.toJson()}");
}
