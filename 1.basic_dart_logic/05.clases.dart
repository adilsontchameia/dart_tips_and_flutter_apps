void main() {
  final Hero wolverine = new Hero('Adilson', 'Programming');
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String? name;
  String? power;

  // Hero(String pName, String pPower)
  //   : name = pName,
  //   power = pPower;
  Hero(this.name, this.power);
}
