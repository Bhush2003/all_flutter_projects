import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class providercountClass with ChangeNotifier {
  int _i = 0;
  int get i => _i;

  void setcount() {
    _i++;
    notifyListeners();
  }
}
