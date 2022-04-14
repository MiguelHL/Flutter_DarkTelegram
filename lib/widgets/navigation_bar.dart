import 'package:dark_telegram/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuBar extends StatelessWidget {
  const MenuBar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final uiProvider= Provider.of<UiProvider>(context);
    final int currentIndex = uiProvider.selectedTapBar;

    return BottomNavigationBar(
      onTap:(int i){
        uiProvider.selectedTapBar=i;
      },
      currentIndex: currentIndex,
      items:const[
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_phone),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call_sharp),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: ''
        ),
      ],
      //fixedColor: Colors.white,
    );
  }
}