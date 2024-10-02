class Transporte{
    String? marca;
}

class Terrestre extends Transporte {
    int? llantas;
}

class Aereo extends Transporte {
    int? motores;
}

class Avion extends Aereo {
    static void main() {
        print("manual");
    }
}

class Auto extends Terrestre {
    bool? aire;
}

class Moto extends Terrestre {
    int? cascos;
}

void main() {
    Auto car = new Auto();
    car.marca = "Ford";
    car.llantas = 4;
    car.aire = true;

    Moto moto = new Moto();
    moto.marca = "Kawasaki";
    moto.llantas = 2;
    moto.cascos = 2;

    Avion avion = new Avion();
    avion.marca = "Airbus";
    avion.motores = 4;
    Avion.manual();

    print("${car.marca}, ${car.llantas}, ${car.aire}");
    print("${moto.marca}, ${moto.llantas}, ${moto.cascos}");
    print("${avion.marca}, ${avion.marca}, ${avion.motore}");
}