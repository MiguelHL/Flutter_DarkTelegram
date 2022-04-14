import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier{

  int _selectedTapBar = 0;

  int get selectedTapBar{
    return _selectedTapBar;
  }

  set selectedTapBar(int i){
    _selectedTapBar=i;
    notifyListeners();
  }

}


