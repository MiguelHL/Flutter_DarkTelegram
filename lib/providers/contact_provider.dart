import 'dart:convert';
import 'package:dark_telegram/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactProvider extends ChangeNotifier{

  String baseUrl='random-data-api.com';
  String firstName='';
  List profiles =[];

  ContactProvider(){
    // ignore: avoid_print
    print('iniciado');
    getContacts();
  }

  getContacts() async{
  
  var url = Uri.https(baseUrl,'api/users/random_user',{'size':'20'});
  final response= await http.get(url);
  profiles= json.decode(response.body);
  print(profiles.length);
  notifyListeners();

  }

  getContacts2() async{
  
  var url = Uri.https(baseUrl,'api/users/random_user',{'size':'10'});
  final response= await http.get(url);
  List<dynamic> a=json.decode(response.body);
  print(a[0]['id']);
  //ContactModel.fromJson(a[0]);
  //print(a);

  
  //List<ContactModel>.from();

 
  //notifyListeners();

  }

}