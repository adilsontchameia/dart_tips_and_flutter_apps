void main() {
  print('Starting main');
  httpGet('https://google.com').then(
    (value) {
      print(value);
    },
  ).catchError((err) {
    print('Error: $err');
  }).whenComplete(() => print('Succesfully Completed'));
  print('Ended do main');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    //throw 'Error on Request';
    return 'Response for the http request';
  });
}
