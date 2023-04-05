import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/view/Widgets/FeedbackWidget.dart';
import 'package:flutter/material.dart';
import 'Widgets/GlobalMainWidget.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(Container(
      margin: EdgeInsets.all(AllDimension.sixteen),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GlobalMainWidget.backBtn("Write Feedback",context),
            SizedBox(height: AllDimension.sixteen),
            Card(
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
                            height: AllDimension.eightyFour,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AllImages.user),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(
                                    AllDimension.oneHundred)),
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
                                        style: TextStyle(
                                            fontSize: AllDimension.twenty,
                                            color: AllColors.blackColor,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: AllDimension.eight),
                                    Image.asset(AllImages.tick,
                                        height: AllDimension.twentyTwo,
                                        width: AllDimension.twentyTwo)
                                  ],
                                ),
                                SizedBox(height: AllDimension.eight),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.location_on_outlined,
                                        size: AllDimension.fourteen,
                                        color: AllColors.mainThemeColor),
                                    SizedBox(width: AllDimension.two),
                                    Expanded(
                                      child: Text("Pinto Park, Gwalior",
                                          style: TextStyle(
                                              fontSize: AllDimension.fourteen,
                                              color: AllColors.mainThemeColor)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: AllDimension.eight),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Image.asset(AllImages.cat,
                                            height: AllDimension.sixteen,
                                            width: AllDimension.twenty),
                                        SizedBox(width: AllDimension.two),
                                        Text("Painter",
                                            style: TextStyle(
                                                fontSize:
                                                    AllDimension.sixteen)),
                                      ],
                                    ),
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
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(AllDimension.ten),
                          margin: EdgeInsets.only(right: AllDimension.eight),
                          decoration: BoxDecoration(
                            color: AllColors.lightMainThemeColor,
                            borderRadius: BorderRadius.all(
                                Radius.circular(AllDimension.oneHundred)),
                          ),
                          child: Image.asset(AllImages.call,
                              height: AllDimension.twenty,
                              width: AllDimension.twenty),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: AllDimension.sixteen),
            Text("Rate Pintu Singh",
                style: TextStyle(
                    color: AllColors.blackColor,
                    fontSize: AllDimension.sixteen,
                    fontWeight: FontWeight.bold)),
            Text("Hired On: 24th Feb, 2023",
                style: TextStyle(
                    color: AllColors.officialGreyColor,
                    fontSize: AllDimension.sixteen)),

            SizedBox(height: AllDimension.sixteen),

            FeedbackWidget.FeedBackType("Communication",AllImages.communication),
            SizedBox(height: AllDimension.sixteen),
            FeedbackWidget.FeedBackType("Behavior",AllImages.behavior),
            SizedBox(height: AllDimension.sixteen),
            FeedbackWidget.FeedBackType("Professionalism",AllImages.professionalism),
            SizedBox(height: AllDimension.sixteen),
            FeedbackWidget.FeedBackType("Quality of the Work",AllImages.quality),
            SizedBox(height: AllDimension.sixteen),
            FeedbackWidget.FeedBackType("Hire Again?",AllImages.hireAgain),
            SizedBox(height: AllDimension.twentyEight),

            FeedbackWidget.CommentSection(),

            FeedbackWidget.photoVideoSection(),

            SizedBox(height: AllDimension.twenty),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(AllDimension.sixteen),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AllColors.mainThemeColor,
                borderRadius: BorderRadius.circular(AllDimension.eight)
              ),
              child: Text("Submit",style: TextStyle(fontSize: AllDimension.twenty,
              color: AllColors.whiteColor),),
            ),
            SizedBox(height: AllDimension.sixteen),
            Container(
              alignment: Alignment.center,
              child: Text("Cancel",
                  style: TextStyle(color: AllColors.mainThemeColor,
                      fontSize: AllDimension.sixteen)),
            ),
            SizedBox(height: AllDimension.sixteen),

          ],
        ),
      ),
    ));
  }
}
