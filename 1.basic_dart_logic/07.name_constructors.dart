void main() {
  // ignore: unused_local_variable
  final ironMan = Hero(
    name: 'Tony Stark',
    power: 'Millionart',
    isAlive: false,
  );
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Millionart',
    'isAlive': false,
  };

  final ironManFromJson = Hero.fromJson(rawJson);
  print(ironManFromJson);
  print(rawJson);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return 'Name: $name, Power: $power, Is Alive: ${isAlive ? 'Yes' : 'No'}';
  }
}
