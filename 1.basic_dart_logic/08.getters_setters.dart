void main() {
  final mySquare = Square(side: -5);
  mySquare.side = -5;
  print('Side: ${mySquare.area}');
}

class Square {
  double _side; //side * side

  Square({required double side}) : _side = side;

  double get area => _side * _side;

  set side(double value) {
    print('Setting new $value');
    if (value < 0) throw ('Value must be >=0');
    _side = value;
  }
}
