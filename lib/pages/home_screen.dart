import 'package:dark_telegram/pages/pages.dart';
import 'package:dark_telegram/providers/providers.dart';
import 'package:dark_telegram/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('TITLE'),
        actions: [
          
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.add)
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.edit)
          ),
       
        ],

      ),
      body: _HomePageBody(),
      bottomNavigationBar: const MenuBar(),
     // bottomNavigationBar: const MenuBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final uiProvider= Provider.of<UiProvider>(context);
    final currentIndex =uiProvider.selectedTapBar;

    switch(currentIndex){
      case 0:
      return const ContactsScreen();
      case 1:
      return const CallsScreen();
      case 2:
      return const MessageScreen();
      default:
      return const ContactsScreen();
    }
  }
}