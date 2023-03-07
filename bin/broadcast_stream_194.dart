Stream<int> numbers() {
  return Stream.periodic(Duration(seconds: 2), (i) => i);
}

void main() {
  Stream<int> numberStream = numbers();
  Stream<int> broadcastStream = numberStream.asBroadcastStream()
    .take(5);
  // broadcastStream merupakan turunan dari numberstream, yg di broadcast

  broadcastStream.listen((event) {print(event);});
  broadcastStream.listen((event) {print(event);});

  print('Done');
}