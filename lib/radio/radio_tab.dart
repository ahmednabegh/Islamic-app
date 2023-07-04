import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class RadioTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 20),
      Image.asset(
        'assets/images/radio_photo.png',
        height: 200,
      ),
      SizedBox(height: 20),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
      IconButton(onPressed: (){},
        iconSize: 50,
        color: MyThemeData.lightPrimary,
      icon: Icon(Icons.skip_next),
            ),
            IconButton(onPressed: (){},
              iconSize: 60,
              color: MyThemeData.lightPrimary,
                icon: Icon(Icons.play_arrow),),
            IconButton(onPressed: (){},
              iconSize: 50,
              color: MyThemeData.lightPrimary,
                icon:Icon(Icons.skip_previous),


                )
          ]  )
          ]
      ),
   );

  }
}
