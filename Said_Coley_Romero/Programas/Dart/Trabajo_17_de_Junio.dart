import 'dart:io';

void main(){
  print("Ingrese cantidad de estudiantes:");
  int a = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= a; i++) {
    print("Digite su nombre acontinuacion:");
    String n4M3 = stdin.readLineSync()!;

    int many = n4M3.length;
    String inVert = "";

   for (int j = many - 1; j >= 0; j--) {
      String z = n4M3[j];
      inVert = inVert + z;
    }

   print("Tu nombre es $n4M3 y la forma inversa es $inVert");
  }


}