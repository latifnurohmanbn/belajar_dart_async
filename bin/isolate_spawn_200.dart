import 'dart:io';
import 'dart:isolate';

Future<void> sayHello(String name) async {
  sleep(Duration(seconds: 2));
  print('Hello $name');
  Isolate.exit();
  // fungsi Isolate.exit berfungsi agar keluar dari Isolate
}

void main() {
  Isolate.spawn(sayHello, 'Bayu');
  print('Done');
}