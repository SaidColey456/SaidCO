import 'personas.dart';

void main(List<String> args) {
  print('Para entrar al club minimo debes tener 10000000 dolares');

  Personas said = Personas('Said', 2000000, 18);
  print(
      '${said.name} tiene ${said.edad} años y tiene un capital de ${said.valorCuenta} dolares');

  // Personas daniel = Personas('Daniel', 500000, 19);
  //  print(
  //   '${daniel.name} tiene ${daniel.edad} años y cuenta con un capital de ${daniel.valorCuenta} dolares');

  //Daniel no puede entrar al club porque no cuenta con el capital requerido, ¿como hariamos ahi?

  try {
    Personas daniel = Personas('daniel', 900000, 19);
    daniel;
  } on FormatException catch (e) {
    String mensaje = e.mensaje; //    Imprimira el error
    int compensar = e.compensar!; //        Imprimira el porque del error
    int fuente = e.fuente; //         Imprimira como puede resolverse

    print('$mensaje, cuentas con $fuente, solo necesitas $compensar dolares mas');
  }
}