import 'package:http/http.dart' as https;
import 'package:http/http.dart';

Future<void> gettestingdata() async {
  final testingres = await https
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  print("status code is ${testingres}");
  if (testingres.statusCode == 200) {
    print(testingres.body);
  } else {
    print(testingres.statusCode);
  }
}
