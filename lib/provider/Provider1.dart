import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Providername extends ChangeNotifier {
  int _counter = 0;
  int get Counter => _counter;
  void increament() {
    _counter = Counter + 1;
    notifyListeners();
  }

  void decremaent() {
    _counter = Counter - 1;
    notifyListeners();
  }

  void resetCounter() {
    _counter = 0;
    notifyListeners();
  }
}
