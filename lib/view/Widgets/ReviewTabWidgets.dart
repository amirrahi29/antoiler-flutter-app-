import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ReviewTabWidgets{

  static Widget RatingWidgetSection(BuildContext context){
    return Column(
      children: <Widget>[

        Text("Overall Rating",
            style: TextStyle(fontSize: AllDimension.fourteen,
                color: AllColors.textGreyColor)),
        Text("4.7",
            style: TextStyle(fontSize: AllDimension.seventy,
                color: AllColors.blackColor,
                fontWeight: FontWeight.bold)),
        RatingBar.readOnly(
          alignment: Alignment.center,
          filledColor: AllColors.mainThemeColor,
          filledIcon: Icons.star,
          emptyIcon: Icons.star_border,
          initialRating: 5,
          maxRating: 5,
          size: AllDimension.thirtyTwo,
        ),
        SizedBox(height: AllDimension.four),
        Text("Based on 232 Reviews",
            style: TextStyle(fontSize: AllDimension.fourteen,
                color: AllColors.textGreyColor,
                fontWeight: FontWeight.bold)),

        SizedBox(height: AllDimension.sixteen),

        ReviewTabWidgets.RatingProgress("Communication", context, 0.9),
        ReviewTabWidgets.RatingProgress("Behaviour", context, 0.6),
        ReviewTabWidgets.RatingProgress("Professionalism", context, 0.7),
        ReviewTabWidgets.RatingProgress("Quality of Work", context, 0.4),
        ReviewTabWidgets.RatingProgress("Hire Again?", context, 0.8),

      ],
    );
  }

  static Widget RatingProgress(String title, BuildContext context, double value){
    return Column(
      children: <Widget>[

        Row(
          children: <Widget>[

            Expanded(
              flex: 1,
              child: Text(title,
                  style: TextStyle(fontSize: AllDimension.twelve,
                      color: AllColors.textGreyColor,
                      fontWeight: FontWeight.bold)),
            ),

            SizedBox(width: AllDimension.eight),

            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                child: LinearProgressIndicator(
                  value: value,
                  color: AllColors.mainThemeColor,
                  backgroundColor: AllColors.darkMainThemeColor,
                ),
              ),
            )

          ],
        ),
        SizedBox(height: AllDimension.six),

      ],
    );
  }

  static Widget ReviewItems(){
    return Container(
      padding: EdgeInsets.all(AllDimension.eight),
      margin: EdgeInsets.only(bottom: AllDimension.eight),
      decoration: BoxDecoration(
        color: AllColors.backgroundBlueColor,
        borderRadius: BorderRadius.circular(AllDimension.eight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Row(
            children: <Widget>[

              Container(
                height:AllDimension.fifty,
                width:AllDimension.fifty,
                decoration: BoxDecoration(
                    color: AllColors.backgroundGreyColor,
                    borderRadius: BorderRadius.circular(AllDimension.eight)
                ),
              ),
              SizedBox(width: AllDimension.eight),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text("Martin Luthar",
                        style: TextStyle(fontSize: AllDimension.twelve,
                            color: AllColors.blackColor,
                            fontWeight: FontWeight.bold)),
                    Row(
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
                        Text("4.5",
                            style: TextStyle(color: AllColors.officialGreyColor))
                      ],
                    ),

                  ],
                ),
              ),
              Text("2 Months ago",
                  style: TextStyle(fontSize: AllDimension.ten,
                      color: AllColors.officialGreyColor,
                      fontWeight: FontWeight.bold)),

            ],
          ),
          Text("A handyman, also known as a fixer, handyperson or handyworker, "
              "is a person skilled at a wide range of repairs, typically around the home.",
              style: TextStyle(fontSize: AllDimension.twelve,
                  color: AllColors.officialGreyColor,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: AllDimension.eight),
          Text("View Attached Media",
              style: TextStyle(fontSize: AllDimension.twelve,
                  color: AllColors.blueDarkColor)),

        ],
      ),
    );
  }

}