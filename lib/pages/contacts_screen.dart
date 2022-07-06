//import 'package:dark_telegram/widgets/widgets.dart';
//import 'package:dark_telegram/providers/contact_provider.dart';
import 'package:dark_telegram/providers/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final contactProvider = Provider.of<ContactProvider>(context);
    List<dynamic> profiles = contactProvider.profiles;

    return Column(
      children: [
        _searchLetter(),
        Expanded(
          child: Container(
            color: Colors.black,
            child: ListView.builder(
              //shrinkWrap: true,
              itemCount: contactProvider.profiles.length,
              itemBuilder: (BuildContext context,int a){
              Map<String,dynamic> profile=profiles[a];
               return Column(
                 children:[
                     ListTile(
                      onTap: (){},
                     title: Text("${profile['first_name']} ${profile['last_name']}"),
                     textColor: Colors.white,
                     leading: CircleAvatar(
                       child: Text('$a'),
                       radius: 25,
                       backgroundColor: Colors.white,
                       backgroundImage: NetworkImage(profile['avatar']),
                       //backgroundImage: AssetImage('assets/profile_picture_before.jpg')
                     ),
                   ),
                   const SizedBox(height: 12, )
                 ],
               );
              }
            ),
          ),
        ),
      ],
    );
  }


  Container _searchLetter() {
  const String abc='A B C D E F G H I J K L M N O P Q R S T U V W XS Y Z';
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 30,
        color: Colors.black,
        child: const Text(abc,style:TextStyle(color: Colors.white),textAlign: TextAlign.right,),
      );
  }
}