import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:flutter/material.dart';
import 'LeftDrawer.dart';

class GlobalMainWidget {

  static Widget globalMainWidget(Widget myWidget,
      {BottomNavigationBar? bottomNavigationBar}) {
    return SafeArea(
      child: Scaffold(
          drawer: LeftDrawer(),
          body: myWidget,
          bottomNavigationBar: bottomNavigationBar),
    );
  }

  static Widget CustomTextWithViewAll(String title1, String title2){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        Text(title1,
          style: TextStyle(fontSize: AllDimension.sixteen,
              fontWeight: FontWeight.bold),),

        Row(
          children: <Widget>[
            Text(title2,
                style: TextStyle(color: AllColors.mainThemeColor,
                fontSize: AllDimension.twelve)),
            Icon(Icons.keyboard_arrow_down_outlined,
                color: AllColors.mainThemeColor)
          ],
        )

      ],
    );
  }

}
