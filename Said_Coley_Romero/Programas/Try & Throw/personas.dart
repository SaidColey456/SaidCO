import 'formatException.dart';

class Personas {
  String? name;
  int? edad;
  int? _valorCuenta;

  Personas(String name, int val0rCuent4, int edad) {
    this.name = name;
    this.edad = edad;
    this.val0rCuent4 = val0rCuent4;
  }

  int? get val0rCuent4 => this._valorCuenta;

  set val0rCuent4(int? value) {
    if (value! >= 10000000) {
      _valorCuenta = value;
    } else {
      throw ExcepcionPersonas(value);
    }
  }
}