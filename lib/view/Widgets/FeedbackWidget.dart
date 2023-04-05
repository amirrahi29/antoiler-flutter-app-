import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/CustomClasses/routes/PageConstants.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class FeedbackWidget{

  static Widget FeedBackItem(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, PageConstants.feedbackPage);
      },
      child: Container(
        padding: EdgeInsets.all(AllDimension.sixteen),
        margin: EdgeInsets.only(top: AllDimension.eight),
        decoration: BoxDecoration(
            color: AllColors.backgroundBlueColor,
            borderRadius:
            BorderRadius.circular(AllDimension.sixteen)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: AllDimension.seventy,
                  width: AllDimension.seventy,
                  padding: EdgeInsets.all(AllDimension.eight),
                  margin:
                  EdgeInsets.only(right: AllDimension.four),
                  decoration: BoxDecoration(
                      color: AllColors.backgroundGreyColor,
                      borderRadius: BorderRadius.circular(
                          AllDimension.eight)),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Martin Luthar",
                                  style: TextStyle(
                                      fontSize:
                                      AllDimension.sixteen,
                                      color: AllColors.blackColor,
                                      fontWeight:
                                      FontWeight.bold)),
                            ),
                            Text(
                              "2 Months ago",
                              style: TextStyle(
                                  fontSize: AllDimension.sixteen,
                                  color: AllColors
                                      .officialGreyColor),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          RatingBar.readOnly(
                            filledColor: AllColors.mainThemeColor,
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            initialRating: 5,
                            maxRating: 5,
                            size: AllDimension.twentyFour,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                                fontSize: AllDimension.sixteen,
                                color:
                                AllColors.officialGreyColor),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Text(
              "A handyman, also known as a fixer, handyperson or handyworker, is a person skilled at a wide range of repairs, typically around the home.",
              style: TextStyle(
                  fontSize: AllDimension.sixteen,
                  color: AllColors.officialGreyColor),
            ),
            SizedBox(height: AllDimension.eight),
            Text(
              "View Attached Media",
              style: TextStyle(
                  fontSize: AllDimension.sixteen,
                  color: AllColors.blueColor),
            ),
          ],
        ),
      ),
    );
  }

  static Widget FeedBackType(String title, String image){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(image,
              height: AllDimension.thirty,
              width: AllDimension.thirty,
            ),
            SizedBox(width: AllDimension.eight),
            Text(title,
                style: TextStyle(color: AllColors.officialGreyColor)),
            SizedBox(width: AllDimension.eight),
            RatingBar.readOnly(
              filledColor: AllColors.mainThemeColor,
              filledIcon: Icons.star,
              emptyIcon: Icons.star_border,
              initialRating: 4,
              maxRating: 5,
              size: AllDimension.twentyFour,
            ),
          ],
        ),
        SizedBox(height: AllDimension.twelve),
        Container(
          decoration: BoxDecoration(
              color: AllColors.lightMainThemeColor,
              borderRadius: BorderRadius.circular(AllDimension.eight)),
          child: Row(
            children: <Widget>[
              for (int i = 1; i < 6; i++)
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(AllDimension.eight),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Colors.grey[400]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "${i}",
                          style:
                          TextStyle(fontSize: AllDimension.twenty),
                        ),
                        SizedBox(width: AllDimension.four),
                        Icon(
                          Icons.star,
                          size: AllDimension.twenty,
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }

  static Widget CommentSection(){
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(AllImages.comment,
              height: AllDimension.thirty,
              width: AllDimension.thirty,
            ),
            SizedBox(width: AllDimension.eight),
            Text("Write a Comment",style: TextStyle(fontSize: AllDimension.twenty,
                fontWeight: FontWeight.bold)),

          ],
        ),
        SizedBox(height: AllDimension.sixteen),
        TextFormField(
          minLines: 4,
          maxLines: 8,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: 'description',
            hintStyle: TextStyle(
                color: Colors.grey
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(AllDimension.eight)),
            ),
          ),
        ),
        SizedBox(height: AllDimension.sixteen),
      ],
    );
  }

  static Widget photoVideoSection(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(AllImages.gallery,
              height: AllDimension.thirty,
              width: AllDimension.thirty,
            ),
            SizedBox(width: AllDimension.eight),
            Text("Add Photos and Videos",style: TextStyle(
                fontSize: AllDimension.twenty,
                fontWeight: FontWeight.bold)),

          ],
        ),
        SizedBox(height: AllDimension.eight),
        Row(
          children: <Widget>[

            Container(
              margin: EdgeInsets.all(AllDimension.eight),
              height: AllDimension.oneHundred,
              width: AllDimension.oneHundred,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AllImages.man)
                  ),
                  borderRadius: BorderRadius.circular(AllDimension.twelve)
              ),
            ),

            Container(
              margin: EdgeInsets.all(AllDimension.eight),
              child: DottedBorder(
                borderType: BorderType.RRect,
                color: AllColors.mainThemeColor,
                radius: Radius.circular(AllDimension.twelve),
                padding: EdgeInsets.all(6),
                child: Container(
                  alignment: Alignment.center,
                  height: AllDimension.oneHundred,
                  width: AllDimension.oneHundred,
                  child: Icon(Icons.add,color: AllColors.mainThemeColor),
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }

}