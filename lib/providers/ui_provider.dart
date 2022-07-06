import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier{

  int _selectedTapBar = 0;
  String _nameSelected ='CONTACTS';

  int get selectedTapBar{
    return _selectedTapBar;
  }

  set selectedTapBar(int i){
    _selectedTapBar=i;
    changeNameSelected(i);
    notifyListeners();
  }

  changeNameSelected(int i){
    if(i==0){
      _nameSelected='CONTACTS';
    }else{
      if(i==1){
        _nameSelected='CALLS';
      }else{
        _nameSelected='CHATS';
      }
    }
  }

  set nameSelected(String name){
    _nameSelected=name;
    notifyListeners();
  }

  String get nameSelected{
   return _nameSelected;
  }


}


