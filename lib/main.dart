import 'package:dark_telegram/pages/calls_screen.dart';
import 'package:dark_telegram/pages/home_screen.dart';
import 'package:dark_telegram/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() { runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=>UiProvider()),
        ChangeNotifierProvider(create: (_)=>ContactProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dark telegram',
        initialRoute: 'home_screen',
        routes: {
          'home_screen': (_)=> const HomeScreen(),
          'calls_screen':(_)=> const CallsScreen(),
        },
        theme: ThemeData(
          //primaryColorBrightness: Brightness.deark,
          appBarTheme: const AppBarTheme(
            color:Colors.black
          ),

          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color.fromRGBO(28,28,28,1),
            selectedItemColor: Color.fromRGBO(255,255,255,1),
            unselectedItemColor: Color.fromRGBO(146, 146, 146, 1),
            //showUnselectedLabels: false,
            elevation: 1,
          ),
          listTileTheme: const ListTileThemeData (
          selectedColor: Colors.red,
          ),
          //primaryColor: Colors.black
        ),
        
      ),
    );
  }
}