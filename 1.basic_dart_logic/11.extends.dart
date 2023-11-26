void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
  print('Wind: ${chargePhone(windPlant)}');
}

//Exemplo de aplicacao (principios solid)
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('The energy is not enough');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount) {
    //throw UnimplementedError();
  }
}

//Extends: Herdar todas propriedades
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(
          energyLeft: initialEnergy,
          type: PlantType.wind,
        );

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }

  @override
  String toString() {
    return 'Energy Left: ${energyLeft.toString()}, Type: $type';
  }
}
