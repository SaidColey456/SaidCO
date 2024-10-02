import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class User{
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;


  User(var response){
    Map<String, dynamic> map = jsonDecode(response);
    postId = map['postId'];
    id = map['id'];
    name = map['name'];
    email = map['email'];
    body = map['body'];
  }
}

void main() async {
  print('Ingrese el número del comentario que desea solicitar');
  int num = int.parse(stdin.readLineSync()!);
  var url = Uri.https('jsonplaceholder.typicode.com', 'comments/$num');
  print('Buscando...');
  var response = await http.get(url);
  //print(response.statusCode);
  //print(response.body);

  if (response.statusCode == 200){
    User user = User(response.body);
    print('El email del usuario es ${user.email}');
  }else{
    print('El número del comentario seleccionado no existe');
  }
}