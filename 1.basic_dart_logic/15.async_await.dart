void main() async {
  print('Starting main');
  try {
    final value = await httpGet('https://google.com');
    print(value);
  } catch (err) {
    print('Erro: $err');
  }

  print('Ended do main');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  //throw 'Error on request';
  return 'We have a response for the http request';
}
