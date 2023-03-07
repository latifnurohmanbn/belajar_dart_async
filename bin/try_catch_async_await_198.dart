Future<String> firstName() async{
  return 'Bayu';
}

Future<String> lastName() async{
  return 'Nugroho';
}

Future<String> sayHello(String name) async{
  // return 'Hello $name';
  throw Exception('Ups');
}

Future<void> say() async {
  try {
    String first = await firstName();
    String last = await lastName();
    String hello = await sayHello('$first $last');
    print(hello); 
  } catch (e) {
    print(e); 
  } finally {
    print('Done Say()');
  }
}

void main() {
  say();

  print('Done');
}