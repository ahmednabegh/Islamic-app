import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/item_hadeth_name.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class HadithTab extends StatefulWidget {

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
List<Hadeth>hadethlist=[];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    if (hadethlist.isEmpty) {
      loadHadithFile();
    }
    return Column(
      children: [
        Expanded(
          flex: 1,
            child: Image.asset('assets/images/hadith_logo_image.png')
        ),
        Divider(
          color:
        provider .isDarkMode()?
        MyThemeData.darkPrimary:
          MyThemeData.lightPrimary,
          thickness: 2,
        ),
        Text(AppLocalizations.of(context).hadeth_name,
          style: Theme.of(context).textTheme.headline2,),
        Divider(
          color:
          provider .isDarkMode()?
          MyThemeData.darkPrimary:
          MyThemeData.lightPrimary,
          thickness: 2,
        ),
        Expanded(
          flex: 3,

          child:
          hadethlist.isEmpty ?
              Center(child: CircularProgressIndicator(),):


          ListView.separated(
            separatorBuilder: (context,index){
              return    Divider(
                color:
                provider .isDarkMode()?
                MyThemeData.darkPrimary:
                MyThemeData.lightPrimary,
                thickness: 2,
              );
            },
            itemBuilder:(context,index){
              return ItemhadethName(hadeth: hadethlist[index]);
            },
            itemCount: hadethlist.length,
          ),
        )      ],

    );
  }

  void loadHadithFile()async{
   String fileContent=await rootBundle.loadString('assets/files/ahadeth .txt');
List<String> allAhadithList= fileContent.split('#\r\n');
for (int i = 0 ; i< allAhadithList.length;i++){
 List<String>singleHadith= allAhadithList[i].split('\n');
String title = singleHadith[0];
singleHadith.removeAt(0);
Hadeth hadeth = Hadeth(title: title, content: singleHadith);
hadethlist.add(hadeth);
}
setState(() {

});
  }
}
class Hadeth{
  String title ;
  List<String> content ;
  Hadeth({required this.title , required this.content});
}
