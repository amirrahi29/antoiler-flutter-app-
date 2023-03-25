import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/view/BottomPages/CustomModelPopUp.dart';
import 'package:flutter/material.dart';

class ChargesTabWidget{

  static Widget ChargesWidgetItem(BuildContext context){
    return InkWell(
      onTap: (){
        CustomModelPopUp.chooseChargesTabBottomSheet(context);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: AllDimension.eight),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AllDimension.eight),
            color: AllColors.lightMainThemeColor
        ),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  left: AllDimension.twelve,
                  right: AllDimension.twelve,
                  top: AllDimension.sixteen,
                  bottom: AllDimension.sixteen,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Wall-putty of 800 sqft. house...",
                        style: TextStyle(fontSize: AllDimension.twelve,
                            fontWeight: FontWeight.bold,
                            color: AllColors.blackColor)),
                    SizedBox(height: AllDimension.four),
                    Row(
                      children: <Widget>[
                        Text("₹",
                            style: TextStyle(fontSize: AllDimension.twelve,
                                color: AllColors.mainThemeColor)),
                        SizedBox(width: AllDimension.four),
                        Text("30K",
                            style: TextStyle(fontSize: AllDimension.fourteen,
                                color: AllColors.mainThemeColor,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: AllDimension.four),
                        Text("Per Hour",
                            style: TextStyle(fontSize: AllDimension.ten,
                                color: AllColors.mainThemeColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
            ),

            Icon(Icons.keyboard_arrow_right_outlined,
                color: AllColors.mainThemeColor,
            size: AllDimension.twenty)

          ],
        ),
      ),
    );
  }

}