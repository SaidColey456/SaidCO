class Humano{
  String? nombre;
  int? edad;
  int? peso;

}

class Animal{
  String? raza;
  String? color;
  int? peso;

}

class Carro{
  String? color;
  int? peso;
  String? placa;

}

void main(){
  Humano humano = new Humano();
  humano.nombre = "Daniel";
  humano.edad = 22;
  humano.peso = 70;

  Animal animal = new Animal();
  animal.raza = "Gato";
  animal.color = "Naranja";
  animal.peso = 30;

  Carro carro = new Carro();
  carro.color = "Blanco";
  carro.peso = 1600;
  carro.placa = "SJT645";

}