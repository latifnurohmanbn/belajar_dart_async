Stream<int> numbers() {
  return Stream.fromIterable([1,2,3,4,5,6,7,8,9,10]);
}

void main() {
  // datanya akan berubah menjadi Future
  Future<int> total = numbers()
    .fold(0, (previous, element) => previous + element);
    // inisialnya 0, prev 0 dan element nya 1, maka prev 0 + element 1 hasilnya 1
    // angka 1 disimpan di inisial, prev 1 dan elementnya 2, maka prev 1 + element 2 hasilnya 3
    // dst

  total.then((value) => print('Total is $value'));
  print('Done');
}