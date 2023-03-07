import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Calculate get data');
    return 'Get Data';
  });
}

// async cache berfungsi untuk menyimpan data sementara
void main() async {
  final asyncCache = AsyncCache<String>(Duration(seconds: 10));

  String result = await asyncCache.fetch(() => getData());
  print(result);

  String result1 = await asyncCache.fetch(() => getData());
  print(result1);
}