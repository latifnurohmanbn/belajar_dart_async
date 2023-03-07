Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Buba Enterprise');
  });
}

void main() {
  hello();
  print('Done');
}