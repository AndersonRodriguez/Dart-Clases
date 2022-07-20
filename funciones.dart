/// Es una función para sumar
/// [input] parametros números a sumar
/// [output] Resultado de la suma
int suma(int a, int b) {
  return a + b;
}

int operacion(int a, int b, Function func) {
  return func(a, b);
}

// Funcion anonima
var dup = (double x) {
  return x * 2;
};

// Funcion flecha
var trip = (double x) => 3 * x;

/// Una funcion que parametro tenga un string, un bool para pasarlo a mayuscula, int para decir exclamación
///
/// trans('Anderson', true, 3)
///
/// ANDERSON!!!
///
// String trans(String nombre, bool cap, int exclamacion) {
//   var string = nombre;
//   if (cap) nombre.toUpperCase();
//   for (var i = 0; i < exclamacion; i++) {
//     string = string + '!';
//   }
//   return string;
// }

// String trans1(String name, bool boleano, int number) {
//   if (boleano) name.toUpperCase();
//   String exclamacion = '!';
//   for (var i = 0; i < number; i++) {
//     exclamacion = exclamacion + '!';
//   }
//   return name + exclamacion;
// }

// Parametros posicionales
String transforma(String name, bool cap, int exclama) {
  if (cap) name = name.toUpperCase();
  return name += '!' * exclama;
}

// Parametros opcionales []

String transformaOpcional(String name, [bool? cap, int exclama = 1]) {
  if (cap != null && cap) name = name.toUpperCase();
  return name += '!' * exclama;
}

// Parametros nombrados
String transformaNombrados(String name, {required bool cap, int? exclama}) {
  if (cap) name = name.toUpperCase();
  if (exclama != null) name += '!' * exclama;
  return name;
}

void main() {
  print(suma(3, 6));

  print(operacion(5, 5, suma));

  print(dup(3));
  print(trip(3));

  print(transforma('Anderson', true, 3));

  print(transformaOpcional('Juan'));

  print(transformaNombrados('Pepe', cap: true));
}
