import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';

class SearchPageWidget{

  static Widget searchItem(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        Image.asset(AllImages.user,
            height: AllDimension.fifty,
            width: AllDimension.fifty),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text("Pintu Singh",
                  style: TextStyle(
                      fontSize: AllDimension.fourteen,
                      fontWeight: FontWeight.bold
                  )),

              SizedBox(height: AllDimension.four),

              Text("Pinto Park, Gwalior",
                  style: TextStyle(
                      fontSize: AllDimension.eight,
                      color: AllColors.mainThemeColor
                  )),

              SizedBox(height: AllDimension.four),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(AllImages.cat,
                          height: AllDimension.sixteen,
                          width: AllDimension.sixteen),
                      SizedBox(width: AllDimension.two),
                      Text("Painter",
                          style:
                          TextStyle(fontSize: AllDimension.ten,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),

                  SizedBox(width: AllDimension.sixteen),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(AllImages.experience,
                          height: AllDimension.sixteen,
                          width: AllDimension.sixteen),
                      SizedBox(width: AllDimension.two),
                      Text("20+ yrs",
                          style:
                          TextStyle(fontSize: AllDimension.ten,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),


                ],
              ),


            ],
          ),
        ),

        Image.asset(AllImages.right,
            height: AllDimension.twenty,
            width: AllDimension.twenty),

      ],
    );
  }

}