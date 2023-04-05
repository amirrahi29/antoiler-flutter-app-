import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';

class ViewProfileWidget{

  static Widget toolbar(String title1,String title2,BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.arrow_back_ios_new_rounded,size: AllDimension.sixteen),
          Text(title1,style: TextStyle(color: AllColors.blackColor,
              fontSize: AllDimension.eighteen)),
          Text(title2,style: TextStyle(color: AllColors.mainThemeColor)),
        ],
      ),
    );
  }

  static Widget profileCount(String number, String title){
    return Column(
      children: <Widget>[
        Text(number,style: TextStyle(fontSize: AllDimension.twentyTwo,
            fontWeight: FontWeight.bold,color: AllColors.blackColor)),
        Text(title,style: TextStyle(fontSize: AllDimension.sixteen)),
      ],
    );
  }
  static Widget profilePhotoSection(){
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[

        Card(
          child: Container(
            padding: EdgeInsets.only(
                left: AllDimension.eight,
                right: AllDimension.eight,
                bottom: AllDimension.eight,
                top: AllDimension.eightyFour
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Pintu Singh",
                            style: TextStyle(color: AllColors.blackColor,
                                fontSize: AllDimension.twentyFour,fontWeight: FontWeight.bold)),
                        SizedBox(height: AllDimension.eight),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.location_on_outlined,
                                size: AllDimension.sixteen,
                                color: AllColors.mainThemeColor),
                            SizedBox(width: AllDimension.four),
                            Text("City Center, Gwalior",
                                style: TextStyle(
                                    color: AllColors.mainThemeColor,
                                    fontSize: AllDimension.fourteen)),
                          ],
                        ),
                        SizedBox(height: AllDimension.eight),
                        Row(
                          children: <Widget>[
                            Image.asset(AllImages.cat,height: AllDimension.sixteen,width: AllDimension.sixteen),
                            SizedBox(width: AllDimension.eight),
                            Text("Painter",
                                style: TextStyle(fontSize: AllDimension.twenty))
                          ],
                        ),
                        SizedBox(height: AllDimension.eight),
                      ],
                    ),

                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(AllDimension.ten),
                      margin: EdgeInsets.only(right: AllDimension.eight),
                      decoration: BoxDecoration(
                        color: AllColors.lightMainThemeColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(AllDimension.oneHundred)),
                      ),
                      child: Image.asset(AllImages.edit,height: AllDimension.twenty,
                          width: AllDimension.twenty),
                    ),

                  ],
                ),
                SizedBox(height: AllDimension.sixteen),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ViewProfileWidget.profileCount("354", "Views"),
                    ViewProfileWidget.profileCount("132", "Hired"),
                    ViewProfileWidget.profileCount("132", "Shares"),
                  ],
                )

              ],
            ),
          ),
        ),

        Positioned(
          bottom: AllDimension.oneEighty,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              Container(
                height: AllDimension.oneTen,
                width: AllDimension.oneTen,
                margin: EdgeInsets.only(left: AllDimension.oneTwenty),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AllImages.user),
                      fit: BoxFit.cover
                  ),
                  border: Border.all(
                    color: AllColors.mainThemeColor,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(AllDimension.oneHundred),
                ),
              ),

              Positioned(
                bottom: AllDimension.eight,
                right: AllDimension.zero,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(AllDimension.eight),
                  decoration: BoxDecoration(
                    color: AllColors.mainThemeColor,
                    borderRadius: BorderRadius.all(
                        Radius.circular(AllDimension.oneHundred)),
                  ),
                  child: Image.asset(AllImages.secure1,
                      height: AllDimension.sixteen,
                      width: AllDimension.sixteen),
                ),
              )

            ],
          ),
        )

      ],
    );
  }

}