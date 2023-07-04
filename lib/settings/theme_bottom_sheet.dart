import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(onTap:(){
provider.changeTheme(ThemeMode.light);
          }
            ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
[

            Text('Light',
            style: Theme.of(context).textTheme.headline3,
            ),
            Icon(Icons.check,color: Theme.of(context).primaryColor,)
],  ),
          ),
          SizedBox(height: 12,)
,          InkWell(onTap: (){
            provider.changeTheme(ThemeMode.dark);

          },
  child:   Text('Dark',

            style:
            provider.isDarkMode()?
            Theme.of(context).textTheme.headline2?.copyWith(color:MyThemeData.darkPrimary )
:
    Theme.of(context).textTheme.headline2,

            ),
),
        ],
      ),
    );
  }
}