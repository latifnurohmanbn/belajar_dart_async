import 'dart:io';

Future<String> block() async {
  sleep(Duration(seconds: 2));
  return 'Block';
  // proses thread akan berhenti selama 2 detik karena ada sleep
  // otomatis semua proses yg ada di isolate tidak akan bisa dilakukan
}

void main() {
  print('Before');

  block()
    .then((value) => print(value));

  print('Done');
}