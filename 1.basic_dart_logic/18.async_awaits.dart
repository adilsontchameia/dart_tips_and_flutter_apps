void main() {
  emitNumbers().listen((int value) {
    print('Stream Value: $value');
  });
}

//Stream
Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(Duration(seconds: 1));
    yield i; //add values
  }
}
