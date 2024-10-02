import 'dart:io';

void main () {

  print('Cuantos estudiantes colaboran con el recaudo:');
  int dintotal = int.parse(stdin.readLineSync()!);

  int cantidad1 = 0;
  int cantidad2 = 0;
  int acumulado1 = 0;
  int acumulado2 = 0;

for (int n = 1; n <= dintotal; n++) {

  print('Cantidad de dinero que quiere donar el estudiante:');
  int monecash = int.parse(stdin.readLineSync()!);

  if (monecash >= 5000) {
    print('Cantidad aportada adecuadamente: $monecash');
    cantidad1 = cantidad1 + 1;
    acumulado1 = acumulado1 + monecash;
  } else {
    print('Cantidad aportada adecuadamente: $monecash');
    cantidad2 = cantidad2 + 1;
    acumulado2 = acumulado2 + monecash;
  } 

}

  int t0t4l = acumulado1 + acumulado2;
  double pR0M = t0t4l / dintotal;
  double pR0M1 = acumulado1 / cantidad1;
  double pR0M2 = acumulado2 / cantidad2;

  print('Dinero total aportado por los estudiantes: $t0t4l');
  print('Promedio general de los aporte: $pR0M');
  print('Cuantos dieron mas o igual de 5000 pesos: $cantidad1');
  print('Cuantos dieron menos de 5000 pesos: $cantidad2');
  print('Cuanto fue el valor total por los estudiantes mayor o igual de 5000: $acumulado1');
  print('Cuanto fue el valor total por los estudiantes menor de 5000: $acumulado2');
  print('Promedio de dinero de los estudiantes que dieron mas o igual de 5000 es: $pR0M1');
  print('Promedio de dinero de los estudiantes que dieron menor de 5000 es: $pR0M2');

}