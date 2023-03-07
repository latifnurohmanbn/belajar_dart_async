Future<String> sayHello(String name) async {
  return 'Hello $name';
  // output dari return ini sudah menjadi Future, atau outputnya sudah dibungkuskan dengan Future
}

void main() {
  sayHello('World')
    .then((value) => print(value));

  print('Done');
}