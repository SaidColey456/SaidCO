class ExcepcionPersonas extends FormatException {
  //Source significaria la cantidad de dinero con la que la persona cuenta
  int _source;
  ExcepcionPersonas(this._source);

  /*  la anotación @override se utiliza para indicar que un método o propiedad de una clase 
  está sobrescribiendo una implementación de un método o propiedad de su clase base (superclase).  */
  @override
  String get message =>
      "Debes tener como minimo un capital de 10'000,000 de Dolares para ser parte del club";

  @override
  int get offset => 10000000 - _source;

  @override
  get source => _source;
}