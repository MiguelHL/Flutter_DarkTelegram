import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Column(
      children: [
        BottomNavigationBar(
          currentIndex: 1,
          onTap: (int a){},
          items:const [
            BottomNavigationBarItem(
              icon: Icon(null),
              label: 'All',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: 'FAVORITES',
              backgroundColor: Colors.red
            ),
              BottomNavigationBarItem(
              icon: Icon(null),
              label: 'MISSED'
            ),
          ],
        )
      ],
    );
  }
}