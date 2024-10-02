import 'dart:io';

void main() {
  print("Numero de estudiantes :");
  int numEstudiantes = 
 int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numEstudiantes; i++) {
    print("Nombre del estudiante :");
    String nombre = stdin.readLineSync()!;

    print("Nota 1:");
    double nota1 = double.parse(stdin.readLineSync()!);
    print("Nota 2:");
    double nota2 = double.parse(stdin.readLineSync()!);
    print("Nota 3:");
    double nota3 = double.parse(stdin.readLineSync()!);

    double promedio = (nota1 + nota2 + nota3) / 3;
    if (promedio >= 5) {
    print("Excelente, aprobado con $promedio");
    } else {
    print("Su nota es baja, no aprobó. Promedio: $promedio");
    }
  }
}