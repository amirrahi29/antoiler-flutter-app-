import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:flutter/material.dart';

class WishlistTabWidget{

  static tabTitle(BuildContext context, dynamic onBtnTabPressed, tabIndex, String title, int activePageIndex){
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(AllDimension.sixteen)),
        onTap: onBtnTabPressed,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: AllDimension.sixteen),
          alignment: Alignment.center,
          decoration: (activePageIndex == tabIndex) ? BoxDecoration(
            color: AllColors.blackColor,
            borderRadius: BorderRadius.all(Radius.circular(AllDimension.twentyFour)),
          ) : null,
          child: Text(
            title,
            style: (activePageIndex == tabIndex) ? TextStyle(color: AllColors.whiteColor,
                fontSize: AllDimension.twelve) :
            TextStyle(color: AllColors.blackColor),
          ),
        ),
      ),
    );
  }

  static Widget wishlistTabTitle(String title){
    return  Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Text(title,
            style: TextStyle(fontSize: AllDimension.sixteen,
                color: AllColors.blackColor,fontWeight: FontWeight.bold)),
      ),
    );
  }
}