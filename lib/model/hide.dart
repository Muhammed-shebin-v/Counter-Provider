import 'package:flutter/material.dart';

class Hide with ChangeNotifier{
  bool _hidevalue=true;
  bool get hide =>_hidevalue;

  void changeValue(){
    _hidevalue = !_hidevalue;
    notifyListeners();
  }
}