import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemSuraDetails extends StatelessWidget {
String text ;
int index ;
ItemSuraDetails({required this.text ,required this.index});
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);

    return Container(
      padding: EdgeInsets.all(12),
      child: Text('$text (${index+1}) ',
      style:
      provider.isDarkMode()?

      Theme.of(context).textTheme.subtitle1?.copyWith(color: MyThemeData.colorYellow)
   :  Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),

    );
  }
}
