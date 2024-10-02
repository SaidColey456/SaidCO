class Humano
    attr_accessor :nombre, :edad, :peso
  end

  class Animal
    attr_accessor :raza, :color, :peso
  end

  class Carro
    attr_accessor :color, :peso, :placa
  end

  humano = Humano.new
  humano.nombre = "Daniel"
  humano.edad = 22
  humano.peso = 70

  animal = Animal.new
  animal.raza = "Gato"
  animal.color = "Naranja"
  animal.peso = 30

  carro = Carro.new
  carro.color = "Blanco"
  carro.peso = 1600
  carro.placa = "SJT645"