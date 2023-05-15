import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as https;
import 'package:mujahid/ModelClass/kk.dart';

List<Kk> userlist = [];

Future<List<Kk>> getNames() async {
// Future<List<UserModel>> getNames() async {
  var response = await https
      .get(Uri.parse("https://jsonplaceholder.typicode.com/comments/"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    for (Map i in data) {
      userlist.add(Kk.fromJson(i));
    }
    return userlist;
  } else {
    return userlist;
  }
}
