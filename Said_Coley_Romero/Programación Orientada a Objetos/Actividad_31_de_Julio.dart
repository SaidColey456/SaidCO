class Zapato {
  String? marca;
  int talla;
  String? color;


  Zapato(this.talla, {this.marca, this.color});

  String detalles() {
    
    return 'Marca: ${marca ?? "Desconocida"}, Talla: $talla, Color: ${color ?? "Desconocido"}';
  }
}

void main() {
  
  Zapato zapato = Zapato(42);
  zapato.marca = "Nike";
  zapato.color = "Negro";

  String detalles = zapato.detalles();
  print(detalles); 
}
