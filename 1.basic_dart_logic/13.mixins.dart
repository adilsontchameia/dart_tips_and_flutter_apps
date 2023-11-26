abstract class Animal {}

//All proprieties will be copied to Mamifero
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Peixe extends Animal {}

//mixins
mixin Voador {
  void voar() => print('Estou voando');
}

mixin Caminhador {
  void caminhar() => print('Estou caminhando');
}

mixin Nadador {
  void nadar() => print('Estou nadando');
}

//Mixin:
class Golfinho extends Mamifero with Nadador {}

class Morcego extends Mamifero with Voador, Caminhador {}

class Gato extends Mamifero with Caminhador {}

void main() {
  final flipper = Golfinho();
  flipper.nadar();

  final batman = Morcego();
  batman.caminhar();
  batman.voar();

  final gato = Gato();
  gato.caminhar();
}
