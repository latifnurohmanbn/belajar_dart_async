import 'package:test/test.dart';

Future<String> getName() async {
  return 'Bayu Nugroho';
}

void main() {
  test('Future Test', () async {
    final name = await getName();
    expect(name, 'Bayu Nugroho');
  });
}