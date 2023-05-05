import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/sura_details_screen.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme.dart';

void main(){
  runApp(MYApp());
}
class MYApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
HomeScreen.routeName : (context)=> HomeScreen(),
        SuraDetailsScreen.routeName : (context)=> SuraDetailsScreen(),
      },
      initialRoute:HomeScreen.routeName ,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,

    );
  }
}