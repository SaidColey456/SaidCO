import 'dart:io';

void main(){
  print("Ingrese la cantidad de estudiantes:");
  int dattos = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= dattos; i++) {
    print("Diga su nombre acontinuacion:");
    String n4m3 = stdin.readLineSync()!;

    print("Diga su municipio acontinuacion:");
    String mUn1 = stdin.readLineSync()!;

    print("Diga su placa acontinuacion:");
    String pl4ka = stdin.readLineSync()!;

    var n4m3cantt = n4m3.substring(n4m3.length - 2);
    var mUn1cantt = mUn1.substring(0,3);
    var pl4kacantt = pl4ka.substring(pl4ka.length - 3);
  
  print('Su codigo es: ' + mUn1cantt + n4m3cantt + pl4kacantt);
  }


}