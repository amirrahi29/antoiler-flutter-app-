import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';

import 'GlobalMainWidget.dart';

class HomePageWidgets{

  static Widget TitleWidget(String title, double fontSize, FontWeight fontWeight, Color color){
    return Text(title,
        style: TextStyle(fontSize: fontSize,
            color: color,
            fontWeight: fontWeight));
  }
  static Widget HeaderWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        Image.asset(AllImages.logo,
            height: AllDimension.thirty
        ),

        Row(
          children: <Widget>[
            Icon(Icons.location_on_outlined,size: AllDimension.fourteen,
                color: AllColors.mainThemeColor),
            SizedBox(width: AllDimension.four),
            Text("City Center, Gwalior",
                style: TextStyle(color: AllColors.blackColor,
                    fontSize: AllDimension.fourteen,
                    fontWeight: FontWeight.w600)),
            SizedBox(width: AllDimension.four),
            Icon(Icons.keyboard_arrow_down_outlined,size: AllDimension.fourteen)
          ],
        )

      ],
    );
  }
  static Widget BannerWidget(){
    return SizedBox(
      height: AllDimension.eightyFour,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: AllDimension.four.toInt(),
          itemBuilder: (context,index){
            return Container(
                width: AllDimension.twoEighty,
                margin: EdgeInsets.only(right: AllDimension.eight),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AllDimension.ten),
                    image: DecorationImage(
                        image: AssetImage(AllImages.banner),
                        fit: BoxFit.fill
                    )
                ),
                child: Container(
                  margin: EdgeInsets.all(AllDimension.eight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[

                      Text("Get your Tap Repaired!",
                          style: TextStyle(color: AllColors.whiteColor,
                              fontSize: AllDimension.sixteen,fontWeight: FontWeight.bold)),

                      Text("Small sub heading will be required!",
                          style: TextStyle(color: AllColors.whiteColor,
                              fontSize: AllDimension.twelve))

                    ],
                  ),
                )
            );
          }
      ),
    );
  }
  static Widget CategoriesWidgets(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SizedBox(height: AllDimension.sixteen),

          GlobalMainWidget.CustomTextWithViewAll("Categories", "View All"),

          SizedBox(height: AllDimension.twelve),

          SizedBox(
            height: AllDimension.oneHundred,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: AllDimension.eight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Container(
                          height: AllDimension.sixtyFour,
                          width: AllDimension.sixtyFour,
                          padding: EdgeInsets.all(AllDimension.sixteen),
                          decoration: BoxDecoration(
                            color: AllColors.blackColor,
                            borderRadius: BorderRadius.circular(AllDimension.eight),
                          ),
                          child: Image.asset(AllImages.category,
                              height: AllDimension.thirtyTwo,
                              width: AllDimension.thirtyTwo),
                        ),

                        SizedBox(height: AllDimension.four),

                        Text("Painter",
                            style: TextStyle(color: AllColors.officialGreyColor))

                      ],
                    ),
                  );
                }
            ),
          )

        ],
      ),
    );
  }
  static Widget ProfessionalPersonsItems(){
    return Card(
      child: Container(
        padding: EdgeInsets.all(AllDimension.eight),
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Container(
                    height: AllDimension.oneThirty,
                    width: AllDimension.oneThirty,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AllImages.user),
                        ),
                        borderRadius: BorderRadius.circular(AllDimension.twelve)
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(AllDimension.eight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Row(
                          children: <Widget>[
                            Text("Pintu Singh",
                                style: TextStyle(fontSize: AllDimension.twentyTwo,
                                    color: AllColors.blackColor,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(width: AllDimension.eight),
                            Image.asset(AllImages.tick,height: AllDimension.twenty,
                                width: AllDimension.twenty)
                          ],
                        ),

                        SizedBox(height: AllDimension.eight),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.location_on_outlined,size: AllDimension.twenty,
                                color: AllColors.mainThemeColor),
                            SizedBox(width: AllDimension.two),
                            Expanded(
                              child: Text("Pinto Park, Gwalior",
                                  style: TextStyle(fontSize: AllDimension.sixteen,
                                      color: AllColors.mainThemeColor)),
                            ),
                          ],
                        ),

                        SizedBox(height: AllDimension.twelve),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(AllImages.experience,height: AllDimension.twenty,
                                    width: AllDimension.twenty),
                                SizedBox(width: AllDimension.two),
                                Text("Experience",
                                    style: TextStyle(fontSize: AllDimension.sixteen)),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(AllImages.rupee,height: AllDimension.twenty,
                                    width: AllDimension.twenty),
                                SizedBox(width: AllDimension.two),
                                Text("Charges",
                                    style: TextStyle(fontSize: AllDimension.sixteen)),
                              ],
                            )

                          ],
                        ),

                        SizedBox(height: AllDimension.eight),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Text("20+ yrs.",
                                style: TextStyle(fontSize: AllDimension.twentyTwo,
                                    fontWeight: FontWeight.bold,
                                    color: AllColors.blackColor)),

                            SizedBox(width: AllDimension.sixteen),

                            Row(
                              children: <Widget>[

                                Text("600",
                                    style: TextStyle(fontSize: AllDimension.twentyTwo,
                                        fontWeight: FontWeight.bold,
                                        color: AllColors.blackColor)),
                                SizedBox(width: AllDimension.four),
                                Text("Per Day",
                                    style: TextStyle(fontSize: AllDimension.fourteen)),

                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                )

              ],
            ),
            Positioned(
                top: AllDimension.eight,
                right: AllDimension.eight,
                child: Image.asset(AllImages.wishlist,
                    height: AllDimension.thirtyFive,
                    width: AllDimension.thirtyFive)
            )

          ],
        ),
      ),
    );
  }

  static Widget SearchBox(){
    return SizedBox(
      height: AllDimension.fourtyFive,
      child: TextField(
        cursorColor: AllColors.blackColor,
        decoration: InputDecoration(
            suffixIcon: Container(
              padding: EdgeInsets.all(AllDimension.twelve),
              child: Image.asset(
                AllImages.search,
              ),
            ),
            fillColor: Colors.grey[AllDimension.oneHundred.toInt()],
            filled: true,
            contentPadding: EdgeInsets.only(
              left: AllDimension.eight,
              right: AllDimension.eight,
            ),
            labelStyle: TextStyle(color: AllColors.officialGreyColor),
            border: OutlineInputBorder(
              borderSide:  BorderSide(color: AllColors.officialGreyColor),
              borderRadius: BorderRadius.all(
                  Radius.circular(AllDimension.twelve)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: AllColors.officialGreyColor),
              borderRadius: BorderRadius.all(
                  Radius.circular(AllDimension.twelve)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: AllColors.officialGreyColor),
              borderRadius: BorderRadius.all(
                  Radius.circular(AllDimension.twelve)),
            ),
            hintText: 'Search by Name or Profession'),
      ),
    );
  }

}