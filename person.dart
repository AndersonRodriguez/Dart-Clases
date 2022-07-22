import 'person-base.dart';

void main() {
  // Person anderson = Person('Anderson', 26);

  // anderson.dance();

  Male anderson = Male('Anderson', true);

  anderson.dance();

  anderson.name = 'Pancho';

  print(anderson.name);

  Female laura = Female(Time.day);

  laura.name = 'Juana';

  print(laura.name);

  laura.dance();
}

class Male extends Person {
  String name;
  bool sex;

  Male(this.name, this.sex) : super(name, 26, sex: true);
}

// Time solo dia o noche
class Female extends Person {
  Time time;

  Female(this.time) : super('Laura', 30);

  @override
  dance() {
    // print('La usuaria $name de edad $age baila muy bien');
    super.dance();

    // if (time == Time.night)
    //   print('En la noche');
    // else
    //   print('En el dia');

    switch (time) {
      case Time.day:
        print('En el dia');
        break;
      case Time.night:
        print('En la noche');
        break;
      default:
        print('A toda hora');
        break;
    }
  }
}

enum Time { day, night }
