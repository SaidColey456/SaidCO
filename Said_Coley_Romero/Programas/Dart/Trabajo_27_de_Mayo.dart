import 'dart:io';

void main() {
  double rentaAnual = 1500;
  print("¿Cuál es tu renta anual? $rentaAnual");

if (rentaAnual <= 10) {
  print("Tu descuento es de 20%");
} else if (rentaAnual <= 100) {
  print("Tu descuento es de 10%");
} else if (rentaAnual < 1000) {
  print("Tu descuento es de 5%");
} else if (rentaAnual >= 1000 && rentaAnual <= 2000) {
  print("Tu descuento es de 20%");
} else {
print("Tu descuento es de 1%");
 }
}