import 'dart:io';
import 'dart:isolate';

// komunikasi antar 2 isolate
class Parameter {
  String prefix;
  SendPort sendPort;

  Parameter(this.prefix, this.sendPort);
}
// konstruktor bisa digunakan jika ingin mengirimkan data lebih dari 1

Future<void> numbers(Parameter parameter) async {
  for(var i = 0; i < 10; i++) {
    sleep(Duration(seconds: 1));
    parameter.sendPort.send('${parameter.prefix}-$i');
  }
  Isolate.exit();
}

void main() {
  final receivePort = ReceivePort();
  Isolate.spawn(numbers, Parameter('Bayu', receivePort.sendPort));

  receivePort.take(5).listen((message) {print(message);});

  print('Done');
}