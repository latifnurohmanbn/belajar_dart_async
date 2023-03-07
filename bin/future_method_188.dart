Future<String> sayHello(String name) {
  // return Future.delayed(Duration(seconds: 2), () {
  //   // return 'Hello $name';
  //   throw Error();
  // });
  // return Future.error(Exception('Ups'));
  return Future.value('Hello Bayu');
}

void main() {
  sayHello('Bayu')
    // .onError((error, stackTrace) => 'Fallback')
    // menampilkan error karena data dari Future berupa throw Error()
    // serta datanya akan berubah menjadi Fallback
    .whenComplete(() => print('Done Future'))
    // akan memproses ketika data sudah selesai/complete
    // dan akan tetap memproses meskipun error atau sukses
    .then((value) => print(value))
  // mendapatkan data value kemudian ditampilkan value nya
  // then akan berjalan jika sukses, jika gagal/error maka tidak akan berjalan
    .catchError((error) => print('Error with message ${error.message}'));
    // akan menampilkan error message jika terjadi error di return Future.error
  print('Done');
}