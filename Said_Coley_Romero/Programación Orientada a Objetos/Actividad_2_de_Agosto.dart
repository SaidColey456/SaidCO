class Calculadora{
  double? num1;
  double? num2;
  String? operacion;

  Calculadora(n1, n2, operacion){
    this.num1 = n1;
    this.num2 = n2;
    this.operacion = operacion;
  }

  double sumar(){
    double suma = this.num1! + this.num2!;
    return suma; 

  }
  double multiplicar(){
    double multiplicar = this.num1! * this.num2!;
    return multiplicar; 
  }

  double dividir(){
    double dividir = this.num1! / this.num2!;
    return dividir; 
  }

  double restar(){
    double restar = this.num1! - this.num2!;
    return restar; 
  }

  void calcular(){
    if (operacion == "s") {
      print("La suma de $num1 y $num2 es igual a: ${sumar()}");
      
    }else if(operacion == "m"){
      print("La multiplicacion de $num1 y $num2 es igual a: ${multiplicar()}");
    }else if(operacion == "d"){
      print("La division de $num1 y $num2 es igual a: ${dividir()}");
    }else{
      print("La resta de $num1 y $num2 es igual a: ${restar()}");
    }
  }

}

void main(){
  Calculadora calculadora = new Calculadora(8.0,4.0,"d");
  calculadora.calcular();

}