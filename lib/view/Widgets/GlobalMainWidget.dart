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

  static Widget backBtn(String title,BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Row(
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              child: Icon(Icons.arrow_back_ios_new_rounded,size: AllDimension.sixteen)),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(title,style: TextStyle(color: AllColors.blackColor,
                  fontSize: AllDimension.eighteen,fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

}
