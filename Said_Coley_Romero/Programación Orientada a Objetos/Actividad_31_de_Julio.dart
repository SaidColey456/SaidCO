class Zapato

String? marca;
int? talla;
String? color;

Zapato(int talla){
  this.talla = talla;
}

String detalles() {
    return 'Marca: ${this.marca}, Talla: ${this.talla}, Color: ${this.color}';
}

void main() {
    Zapato zapato = new Zapato(42);
    zapato.marca = "Nike";
    zapato.color = "Negro";

    String detalles = zapato.detalles();
    print(detalles);

}