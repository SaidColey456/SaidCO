import 'dart:convert';

class Colaborador {
  String? nombreCompleto;
  int? tipoColaborador;
  double? aporte;


  Colaborador(Map map) {
    this.nombreCompleto = map['nombreCompleto'];
    this.tipoColaborador = map['tipoColaborador'];
    this.aporte = map['aporte'];
  }
}

void main() {
   String jsonString = '{"nombreCompleto": "Said Coley", "tipoColaborador": 1, "aporte": 30.7}';
   Map<String, dynamic> map = jsonDecode(jsonString);
   Colaborador colla = Colaborador(map);
  print(colla.nombreCompleto);
}