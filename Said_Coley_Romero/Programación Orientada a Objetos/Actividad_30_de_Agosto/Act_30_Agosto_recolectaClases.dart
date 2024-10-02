import 'dart:io';

void main() {
  ListaPlata listaPlata = ListaPlata();
  listaPlata.recolectaPlata();
  print(listaPlata.mostrarPlataRecolectada());
  print(listaPlata.mostrarListaPlata());
}

class ListaPlata {
  List<int> listaPlata = [];
  int totalDinero = 0;
  int plata = 0;

  void recolectaPlata() {
    while (totalDinero < 30000) {
      print("Ingrese el monto de plata:");
      plata = int.parse(stdin.readLineSync()!);
      totalDinero += plata;
      listaPlata.add(plata);
    }
  }

  String mostrarPlataRecolectada() {
    return "Dinero recolectado: ${totalDinero} pesos";
  }

  String mostrarListaPlata() {
    return "Dinero en la lista: $listaPlata";
  }
}