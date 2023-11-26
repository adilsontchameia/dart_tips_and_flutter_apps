void main() async {
  print('Starting main');
  try {
    final value = await httpGet('https://google.com');
    print('Went well: $value');
  } on Exception catch (err) {
    print('There is an exception: $err');
  } catch (err) {
    print('Pls contact support team: $err');
  } finally {
    print('Try and Catch terminated');
  }

  print('Ended do main');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  //throw Exception('Error on request');
  //throw 'Error on request';
  return 'We have a response for the http request';
}
