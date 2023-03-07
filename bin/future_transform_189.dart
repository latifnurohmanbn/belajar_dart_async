Future<String> name() {
  return Future.value('Latif Nurohman Bayu Nugroho');
}

void main() {
  name()
    .then((value) => value.split(' ')) // menjadi Future<List<String>>
    .then((value) => value.reversed) // menjad Future<Iterable<String>>
    .then((value) => value.map((e) => e.toUpperCase())) // menjadi Future<Iterable<String>>
    .then((value) => print(value)); // menampilkan data value
  print('Done');
}