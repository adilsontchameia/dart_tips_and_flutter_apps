void main() {
  final Hero wolverine = new Hero(name: 'Adilson', power: 'Programming');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String? name;
  String? power;

  // Hero(String pName, String pPower)
  //   : name = pName,
  //   power = pPower;
  Hero({required this.name, this.power = 'Without Power'});

  //Overriding the native behavior
  @override
  String toString() {
    return '$name - $power';
  }
}
