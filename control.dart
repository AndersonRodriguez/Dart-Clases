void main() {
  // If - Else

  bool access = true;

  if (access) {
    print('Tiene Acceso');
  } else {
    print('No tiene acceso');
  }

  if (access)
    print('Access una linea');
  else
    print('no tiene acceso una linea');

  // If - Else y Else - If

  bool pass = true;

  if (access) {
    print('Acceso');
  } else if (pass) {
    print('Tiene Contraseña');
  } else {
    print('No cumple');
  }

  if (access || pass) {
    print(access);
  }

  String valor = !access ? 'Entra' : 'No Entra';

  print(valor);

  /// Operadores
  /// &&
  /// ||
  /// ==
  /// !=
  /// >
  /// <
  /// >=
  /// <=
  /// !

  // Switch

  String nombre = 'Pancho1';

  switch (nombre) {
    case 'Anderson':
      print('Es Anderson');
      break;
    case 'Pancho':
      print('Es pancho');
      break;
    default:
      print('No es nadie');
      break;
  }

  // While

  int i = 0;

  while (i <= 5) {
    print('El valor de i es $i');
    i++;
  }

  // Do - While

  i = 0;

  do {
    print('Do while el valor de i es $i');
    i++;
  } while (i <= 5);

  // Break si se cumple la condicion sale

  i = 0;

  do {
    print('Break el valor de i es $i');
    i++;

    if (i == 3) {
      break;
    }
  } while (i <= 5);

  // For

  for (var index = 0; index <= 5; index++) {
    if (index == 2) {
      continue;
    }

    print('For $index');

    // if (index == 3) {
    //   break;
    // }
  }

  List lista = [
    'Uno',
    'Dos',
    'Tres',
    {'name': 'Anderson'}
  ];

  for (var num in lista) {
    print(num);
  }

  for (var i = 0; i < lista.length; i++) {
    print(lista[i]);
  }

  lista.forEach((element) {
    print('ForEach $element');
  });
}
