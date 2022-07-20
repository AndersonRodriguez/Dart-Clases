void main() {
  Hora hora = Hora();

  hora.h = 12;

  // print(hora.mostrarHora());

  Reloj miReloj = Reloj(10, 12, 50);
  Reloj miReloj1 = Reloj.nombrado(10, segundo: 40, minuto: 19);

  Reloj miRelojJSON = Reloj.fromJson({"hora": 12, "segundo": 10, "minuto": 15});

  print(miReloj.mostrarHora());
  print(miReloj1.mostrarHora());
  print(miRelojJSON.mostrarHora());
}

class Hora {
  int h = 10, m = 22, s = 33;

  String mostrarHora() {
    return '$h $m $s';
  }
}

class Reloj {
  int? hora, minuto, segundo;

  // Reloj(hora, minuto, segundo) {
  //   this.hora = hora;
  //   this.minuto = minuto;
  //   this.segundo = segundo;
  // }

  Reloj(this.hora, this.minuto, this.segundo);

  // Constructores nombrados
  Reloj.nombrado(this.hora, {this.minuto = 10, required this.segundo});

  Reloj.opcional(this.hora, [this.minuto = 10, this.segundo]);

  /// Metodo para convertir de un json (Map<String, dynamic>) a la instancia ***Con constructor nombrado
  /// {"hora": 12, "segundos": 10, "minuto": 15} => Reloj

  Reloj.fromJson(Map<String, dynamic> parsedJson) {
    hora = parsedJson['hora'];
    minuto = parsedJson['minuto'];
    segundo = parsedJson['segundo'];
  }

  String mostrarHora() {
    return '$hora $minuto $segundo';
  }
}
