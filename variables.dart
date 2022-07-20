void main() {
  // Comentarios

  /**
   * 
   * Bloque de comentarios
   * 
   */

  ///
  /// Documentacion
  /// [Input]
  ///

  // Numeros

  int a = 3;
  double b = 0.5;
  double altura = 3.0;

  num d = 3.8;

  int e;

  var miVar =
      3; // Infiere el valor pero no se puede cambiar el tipo con el tiempo

  dynamic miValor = 4;

  // miValor = '';

  print(miValor);

  // Textos

  String miString = "Hola mundo";

  String nombre = '"Anderson"';

  String parrafo = '''Anderson
  asdasd
asdasd
  ''';

  print(miString);

  print('${miString} $nombre');
  print(miString + ' ' + nombre);
  print(parrafo);

  // Booleanos

  bool activo = false;
  activo = !activo;

  // Listas

  List<dynamic> miLista = [1, 2, 3, 4, '', true, false, !activo];

  List<String> textos = ['Hola', 'Mundo', for (var i in miLista) '$i'];

  List miLista2 = [0, ...miLista];

  miLista2.add('Fin');

  List miLista3 = [0, 1];

  miLista3.addAll(miLista2);

  print(miLista);
  print(textos);
  print(miLista2);
  print(miLista2.length);
  print(miLista3);

  // Set

  Set miSet = {'Hola', 'Mundo', 'Hola'};

  miSet.add('Anderson');
  miSet.add('Anderson');

  print(miSet);

  // Map

  Map<String, dynamic> persona = {
    'name': 'Anderson',
    'lastName': 'Rodriguez',
    'age': 26,
    'access': true
  };

  persona.addAll({'color': 'rojo'});

  print(persona);
  print(persona['name']);

  // Constantes

  // const Aloja el valor en tiempo de compilación
  // final Aloja en tiempo de ejecución

  final double pi = 3.14;

  // Enum

  print(Color.red);
}

enum Color { red, green, blue }
