import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => 'Bayu Nugroho');
}

void main() {
  test('Future Matcher', () {
    final name = getName();
    expect(name, completion(equals('Bayu Nugroho')));
  });

  test('Future Test', () async {
    final name = await getName();
    expect(name, 'Bayu Nugroho');
  });
}