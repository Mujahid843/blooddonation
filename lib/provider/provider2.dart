import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as https;
import 'package:mujahid/ModelClass/kk.dart';

// List<Kk> userlist = [];

class Providernameapis extends ChangeNotifier {
  List<Kk?> _listdata = [];
  List<Kk?> get listdata => _listdata;
  getSinglePostData() async {
    final response = await https
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    if (response.statusCode == 200) {
      // print('my response');
      // print(response.body);
      _listdata = List<Kk?>.from(json.decode(response.body).map((x) {
        return Kk.fromJson(x);
      }));
      print(_listdata);
    } else {
      print("error");
    }
    notifyListeners();
  }
}

// class DataClass extends ChangeNotifier {
//   Kk? post;
//   bool loading = false;

//   getPostData() async {
//     loading = true;
//     post = (await getSinglePostData())!;
//     loading = false;

//     notifyListeners();
//   }
// }
