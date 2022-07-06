import 'package:dark_telegram/pages/pages.dart';
import 'package:dark_telegram/providers/providers.dart';
import 'package:dark_telegram/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider= Provider.of<UiProvider>(context);
    return Scaffold(
      appBar:AppBar(
        title: Text(uiProvider.nameSelected),
        leading: _ProfileAvatar(),
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

class _ProfileAvatar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: GestureDetector(
        onTap: (){
          //Circle Avatar puch
         //Navigator.pushNamed(context,'calls_screen');
        },
        child: const CircleAvatar(
          //backgroundColor: Colors.red,
          backgroundImage: AssetImage('assets/profile_picture_before.jpg'),
          radius: 20,
          ),
      ),
    );
  }
}

class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final uiProvider= Provider.of<UiProvider>(context,listen: false);
    final currentIndex =uiProvider.selectedTapBar;

    switch(currentIndex){
      case 0:
      //uiProvider.nameSelected='CONTACTS';
      return const ContactsScreen();
      case 1:
      //uiProvider.nameSelected='CALLS';
      return const CallsScreen();
      case 2:
      //uiProvider.nameSelected='CHATS';
      return const MessageScreen();
      default:
      return const ContactsScreen();
    }
  }
}