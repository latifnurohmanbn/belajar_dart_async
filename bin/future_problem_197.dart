Future<String> firstName() async{
  return 'Bayu';
}

Future<String> lastName() async{
  return 'Nugroho';
}

Future<String> sayHello(String name) async{
  return 'Hello $name';
}

void main() {
  firstName().then((firstName){
    return lastName().then((lastName){
      var fullName = '$firstName $lastName';
      return sayHello(fullName);
    });
  }).then((value) => print(value));
  // print(value) artinya akan menampilkan data yg terakhir/fullName

  print('Done');
}