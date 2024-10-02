import 'dart:io';

void main() {
  // Variables utilizadas/requeridas. (Todas sin Valor)
  int cantotal = 0;
  double prom = 0;

  // Estas 3 variables las utilizo para >= 5000, que luego nos servira mas adelante.
  int estudiantesmas5 = 0;
  int cantidadmas5 = 0;
  double promMas5 = 0;

  // Y estas 3 variables para <5000.
  int estudiantesmenos5 = 0;
  int cantidadmenos5 = 0;
  double promMenos5 = 0;
  int numEst = 0;

  while (cantotal < 100000) {
    /* En la variable 'aporte' se guardara lo indicado por el usuario, dependiendo 
    lo ingresado sera almacenado en x/y variable. */
    print('Ingrese la cantidad que desea aportar');
    int aporte = int.parse(stdin.readLineSync()!);
    numEst = numEst + 1;
    cantotal += aporte;
    prom = (cantotal / numEst);

    /* La condicion donde si el valor aportado por el ususario es mayor a 5000, sera 
    las 3 variables donde se almacenarán los datos. */
    if (aporte >= 5000) {
      estudiantesmas5++;
      cantidadmas5 += aporte;
      promMas5 = cantidadmas5 / estudiantesmas5;

      /* Al contrario, si el valor no sobrepasa los 5000, tiene 3 variables las cuales 
  dependiendo lo escrito, se almacenará dicho caso. */
    } else {
      estudiantesmenos5++;
      cantidadmenos5 += aporte;
      promMenos5 = cantidadmenos5 / estudiantesmenos5;
    }
  }

  print('La cantidad total recaudada fue de $cantotal \n');
  print('El promedio general es de $prom \n');
  print('La cantidad de aprendices que donaron 5000 o mas, fueron $estudiantesmas5 y con estos numEst fue recaudado: $cantidadmas5 con un promedio de $promMas5 \n');
  print('La cantidad de aprendices que donaron menos de 5000, fueron $estudiantesmenos5 y con estos numEst fue recaudado: $cantidadmenos5 con un promedio de $promMenos5 \n');
}