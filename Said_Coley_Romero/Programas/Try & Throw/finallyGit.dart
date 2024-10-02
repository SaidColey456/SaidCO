void main() {
  int v = 10;
  int z = 0;
  var resst;
  resst;

  try {
    resst = division(v, z);
  } on UnsupportedError {
    print('1');
  } on FormatException {
    print('2');
  } catch (e) {
    print(e.toString());
  }
}

double division(int v, int z) {
  if (z <= 0) {
    throw FormatException('El denominador es 0 o menos');
  }
  return v / z;
}