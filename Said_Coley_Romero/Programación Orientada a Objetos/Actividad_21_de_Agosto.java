class Transporte{
    public String empresa;
    public String ciudad;

    public String getInfo(){
        return this.empresa + "-" + this.ciudad;
    }
}

class Particular extends Transporte{
    public String placa;
    public String color;
    private int modelo;

    public String getInfo(){
            return this.ciudad;
    }

    public Particular(int m){
        this.modelo = m;
    }

    public int getRtm(){
        return this.modelo + 5;
    }
}

class Publico extends Transporte{
    private int ninterno;
    public String ruta;

    public Publico(int n){
        this.ninterno = n;
    }

    public String getCodigo(){
        return this.ruta + "-" + this.ninterno;
    }
}

class main{
    public static void main(String[] args) {
    Publico bus = new Publico(404);
    bus.ruta = "Polonuevo";
    bus.empresa = "Lolaya";
    bus.ciudad = "Barranquila";

    System.out.println("El transporte publico es: " + bus.getInfo());
    System.out.println("El codigo del transporte publico es: " + bus.getCodigo());

    Particular carro = new Particular(2000);
    carro.placa = "KUA777";
    carro.color = "Negro";
    carro.ciudad = "Medellin";

    System.out.println("La placa del transporte particular es: " + carro.placa);
    System.out.println("El color del transporte particular es: " + carro.color);
    System.out.println("la ciudad del transporte particular es: " + carro.getInfo());
    System.out.println("La fecha de la proxima tecno mecanica es: " + carro.getRtm());

    }
}