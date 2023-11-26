void main() {
  emitNumber().listen((value) {
    print('Stream Value: $value');
  });
}

Stream<int> emitNumber() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('Emit: $value');
    return value;
  }).take(5);
}
