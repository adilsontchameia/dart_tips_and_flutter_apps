void main() {
  final numbers = [1, 2, 2, 4, 5, 6, 7, 8, 9, 10];
  print('Original List: $numbers');
  print('Lenght: ${numbers.length}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Index 0: ${numbers[0]}');
  print('Inversed: ${numbers.reversed}'); //Iterable

  //Iterable => Colecao de elementos que se le de maneira sequencial
  //Sabe quantos elementos tem, ordenados, para ser utilizados.
  final reversedNumber = numbers.reversed;
  print('Iterable: ${reversedNumber}');
  print('Iterable (List): ${reversedNumber.toList()}');
  //Set => Lista com valores unicos, nao tem nada duplicado.
  //Remover valores duplicados
  print('Set (List): ${reversedNumber.toSet()}');

  final numberGreaterThanFive = numbers.where((int num) {
    return num > 5;
  });
  print('GreaterThanFive: $numberGreaterThanFive');
}
