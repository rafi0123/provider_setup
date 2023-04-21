import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  double _val = 0.4;
  double get val => _val;

  setValue(double value) {
    _val = value;

    notifyListeners();
  }
}
