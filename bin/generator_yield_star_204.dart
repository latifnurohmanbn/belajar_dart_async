Stream<int> doubleNumber(int number) async* {
  yield number;
  yield number;
}

Stream<int> asyncNumber() async* {
  for(int i = 0; i < 10; i++) {
    yield* doubleNumber(i);
  }
  // menampilkan data 0-9 secara double
  // 0 0 , 1 1 , 2 2 dst
}

void main() {
  asyncNumber()
    .listen((event) {print(event);});

  print('Done');
}