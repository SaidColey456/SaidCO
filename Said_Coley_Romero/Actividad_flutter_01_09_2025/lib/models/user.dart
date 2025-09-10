class User {
  final String nombre;
  final String apellido;
  final String email;
  final double saldo;
  final String telefono;

  User({
    required this.nombre,
    required this.apellido,
    required this.email,
    required this.saldo,
    required this.telefono,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      nombre: json['nombre'],
      apellido: json['apellido'],
      email: json['email'],
      saldo: (json['saldo'] as num).toDouble(),
      telefono: json['telefono'],
    );
  }
}
