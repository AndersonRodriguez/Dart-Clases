abstract class Person {
  String _name;
  int age;
  bool sex;

  String get name {
    return name.contains('a') ? _name.toUpperCase() : _name + '!';
  }

  void set name(String name) {
    _name = name + '*';
  }

  Person(this._name, this.age, {this.sex = false});

  dance() {
    // sex
    //     ? print('El usuario $name de edad $age baila')
    //     : print('La usuaria $name de edad $age baila');

    if (sex)
      // Male
      print('El usuario $name de edad $age baila');
    else
      // Female
      print('La usuaria $name de edad $age baila');
  }
}
