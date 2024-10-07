import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  int? id;
  String? name;
  String? username;
  String? email;
  String? website;
  String? phone;
  Company? company;
  Address? address;

  User(Map m) {
    this.id = m['id'];
    this.name = m['name'];
    this.username = m['username'];  
    this.email = m['email'];
    this.website = m['website'];
    this.phone = m['phone'];
    
    Map company = m['company'];
    this.company = Company(company);

    Map address = m['address'];
    this.address = Address(address);

  }
} 

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map m){
    this.name = m['name'];
    this.catchPhrase = m['catchPhrase'];
    this.bs = m['bs'];
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map m){
    
    this.street = m['street'];
    this.suite = m['suite'];
    this.city = m['city'];
    this.zipcode = m['zipcode'];
    this.geo =  Geo(m['geo']);

  }

}

class Geo {
  String? lat;
  String? lng;

  Geo(Map){
    Map<String, dynamic>  m = jsonDecode(s);
    this.lat = m['lat'];
    this. lng = m['lng'];
  }
}

void main(){
  var url = Uri.https('jsonplaceholder.typicode.com', '/users/4');
  print('Calculando...');
  var response = await http.get(url);
print('Response status: ${response.statusCode}')
print('Response ')
  

}