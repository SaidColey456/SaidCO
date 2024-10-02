import 'dart:io';

void main() {
  int totalRecaudo = 0;
  int plata = 0;
  int recaudo = 0;
  List<int> listaPlata = [];
  
  while (recaudo < 30000) {
    print('Ingrese la cantidad de plata que desea aportar');
    plata = int.parse(stdin.readLineSync()!);
    listaPlata.add(plata);
    recaudo += plata;
  }
  for (int i in listaPlata) {
Totalrecaudo += i;
  }
  print('La cantidad recauda fueTtotalrecaudo');
  print(listaPlata);
}