import 'dart:async';

void longRunningTask(
  void Function(String) onDone, void Function(Object?) onError) {
    // library milik orang lain
    Future.delayed(Duration(seconds: 5))
      .onError((error, stackTrace) => onError(error))
      .then((value) => onDone('Task Complete'));
  }

Future<String> runLongRunningTask() {
  Completer<String> completer = Completer();

  longRunningTask((data) {
    completer.complete(data);
  }, (error) {
    completer.completeError(error!);
  });

  return completer.future;
}

void main() {
  // longRunningTask((p0) {
  //   print(p0.toUpperCase());
  // }, (p0) {
  //   print(p0);
  // });

  runLongRunningTask()
    .then((value) => print(value));

  print('Done');
}