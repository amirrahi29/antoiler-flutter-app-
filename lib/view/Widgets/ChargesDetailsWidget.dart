import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/CustomClasses/routes/PageConstants.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ChargesDetailsWidget{

  static UserDetailsWidget(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        SizedBox(height: AllDimension.ninty),
        Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Pintu Singh",
                      style: TextStyle(fontSize: AllDimension.twenty)
                  ),
                  SizedBox(height: AllDimension.eight),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on,
                          size: AllDimension.sixteen,
                          color: AllColors.mainThemeColor),
                      SizedBox(width: AllDimension.eight),
                      Text("Pinto Park, Gwalior",
                          style: TextStyle(fontSize: AllDimension.ten,
                              color: AllColors.mainThemeColor))
                    ],
                  ),
                  SizedBox(height: AllDimension.eight),
                  Row(
                    children: <Widget>[
                      Image.asset(AllImages.cat,height: AllDimension.sixteen,width: AllDimension.sixteen),
                      SizedBox(width: AllDimension.eight),
                      Text("Painter",
                          style: TextStyle(fontSize: AllDimension.twelve))
                    ],
                  )
                ],
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, PageConstants.singleProfilePage);
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(AllDimension.twelve),
                decoration: BoxDecoration(
                  color: AllColors.lightMainThemeColor,
                  borderRadius: BorderRadius.all(
                      Radius.circular(AllDimension.eight)),
                ),
                child: Image.asset(AllImages.call,height: AllDimension.twenty,
                    width: AllDimension.twenty),
              ),
            ),

          ],
        ),
        SizedBox(height: AllDimension.eight),
        Row(
          children: <Widget>[

            Expanded(
              child: Row(
                children: <Widget>[

                  RatingBar.readOnly(
                    filledColor: AllColors.mainThemeColor,
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    initialRating: 4,
                    maxRating: 5,
                    size: AllDimension.twenty,
                  ),
                  SizedBox(width: AllDimension.eight),
                  Text("5.0 (233)",
                      style: TextStyle(color: AllColors.officialGreyColor))

                ],
              ),
            ),

            Row(
              children: <Widget>[
                Image.asset(AllImages.secure,height: AllDimension.twenty,width: AllDimension.sixteen),
                SizedBox(width: AllDimension.four),
                Text("Verified",
                    style: TextStyle(fontSize: AllDimension.twelve,color: AllColors.mainThemeColor))
              ],
            )


          ],
        ),
        SizedBox(height: AllDimension.eight),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.all(AllDimension.eight),
                margin: EdgeInsets.only(
                  right: AllDimension.eight,
                ),
                decoration: BoxDecoration(
                    color: AllColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(AllDimension.eight)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Image.asset(AllImages.experience,
                            height: AllDimension.sixteen,
                            width: AllDimension.sixteen),
                        SizedBox(width: AllDimension.four),
                        Text("Experience",
                            style: TextStyle(color: AllColors.mainThemeColor,
                                fontSize: AllDimension.ten))

                      ],
                    ),
                    SizedBox(height: AllDimension.four),
                    Text("20+ yrs.",
                        style: TextStyle(color: AllColors.blackColor,
                            fontSize: AllDimension.sixteen,fontWeight: FontWeight.bold))

                  ],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.all(AllDimension.eight),
                decoration: BoxDecoration(
                    color: AllColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(AllDimension.eight)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Image.asset(AllImages.rupee,
                            height: AllDimension.sixteen,
                            width: AllDimension.sixteen),
                        SizedBox(width: AllDimension.four),
                        Text("Charges",
                            style: TextStyle(color: AllColors.mainThemeColor,
                                fontSize: AllDimension.ten))

                      ],
                    ),
                    SizedBox(height: AllDimension.four),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("600",
                            style: TextStyle(color: AllColors.blackColor,
                                fontSize: AllDimension.sixteen,fontWeight: FontWeight.bold)),
                        SizedBox(width: AllDimension.eight),
                        Text("Per Day",
                            style: TextStyle(color: AllColors.officialGreyColor,
                                fontSize: AllDimension.ten))
                      ],
                    )

                  ],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.all(AllDimension.eight),
                margin: EdgeInsets.only(
                  left: AllDimension.eight,
                ),
                decoration: BoxDecoration(
                    color: AllColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(AllDimension.eight)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Image.asset(AllImages.share,
                            height: AllDimension.sixteen,
                            width: AllDimension.sixteen),
                        SizedBox(width: AllDimension.four),
                        Text("Share",
                            style: TextStyle(color: AllColors.mainThemeColor,
                                fontSize: AllDimension.ten))

                      ],
                    ),
                    SizedBox(height: AllDimension.four),
                    Text("42",
                        style: TextStyle(color: AllColors.blackColor,
                            fontSize: AllDimension.sixteen,fontWeight: FontWeight.bold))

                  ],
                ),
              ),
            )

          ],
        )

      ],
    );
  }

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
            color: AllColors.mainThemeColor,
            borderRadius: BorderRadius.all(Radius.circular(AllDimension.twentyFour)),
          ) : null,
          child: Text(
            title,
            style: (activePageIndex == tabIndex) ? TextStyle(color: AllColors.whiteColor,
                fontSize: AllDimension.twelve) :
            TextStyle(color: AllColors.mainThemeColor),
          ),
        ),
      ),
    );
  }

}