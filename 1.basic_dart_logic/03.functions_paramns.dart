void main() {
  print('Greet 1: ${greateEveryone2()}');
  print('Greet 2: ${greateEveryone2()}');
  print('Sum: ${addTwoNumbers(10, 5)}');
  print('Sum2: ${addTwoNumbers2(10)}');
}

String greateEveryone() {
  return 'Hi everyone :-)';
}

String greateEveryone2() => 'Hi everyone :-)';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbers2(int a, [int b = 0]) {
  //b = b ?? 0;
  //b = b + 1;

  //b ??=0;
  //b++;
  return a + b;
}
