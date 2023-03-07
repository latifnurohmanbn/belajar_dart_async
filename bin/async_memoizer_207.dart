import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Calculate get data');
    return 'Get Data';
  });
}

// async memoizer berfungsi untuk menyimpan data selamanya
void main() async {
  final asyncMemoizer = AsyncMemoizer<String>();

  String result = await asyncMemoizer.runOnce(() => getData());
  print(result);

  String result1 = await asyncMemoizer.runOnce(() => getData());
  print(result1);
}