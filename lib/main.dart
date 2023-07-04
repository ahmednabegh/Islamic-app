
import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/home/quran/sura_details_screen.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
      create: (context)=>AppConfigProvider(),
      child: MYApp()));
}
class MYApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
HomeScreen.routeName : (context)=> HomeScreen(),
        SuraDetailsScreen.routeName : (context)=> SuraDetailsScreen(),
        HadethDetailsScreen.routeName : (context)=> HadethDetailsScreen(),
      },
      initialRoute:HomeScreen.routeName ,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      themeMode:provider.appTheme ,
    );
  }
}