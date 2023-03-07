Stream<int> asyncNumber() async* {
  for(int i = 0; i < 10; i++) {
    yield i;
  }
}

void main() {
  asyncNumber().listen((event) {
    print(event);
  });

  print('Done');
  // akan menampilkan data 0-9 secara asinkronus atau satu persatu
}