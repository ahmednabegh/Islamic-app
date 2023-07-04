import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/home/hadeth/hadith_tab.dart';
import 'package:islami_app/home/quran/sura_details_screen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemhadethName extends StatelessWidget {
 Hadeth hadeth ;


ItemhadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
          arguments:hadeth

        );

      },
      child: Text(hadeth.title,
        style:
        provider.isDarkMode()?
        Theme.of(context).textTheme.subtitle1?.copyWith(color: MyThemeData.colorYellow):

        Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.center,
      ),
    );
  }
}
