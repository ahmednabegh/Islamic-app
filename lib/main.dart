import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';

void main(){
  runApp(MYApp());
}
class MYApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
HomeScreen.routeName : (context)=> HomeScreen(),
      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}