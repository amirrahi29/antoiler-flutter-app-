import 'dart:math';
import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/view/Widgets/FeedbackWidget.dart';
import 'package:antoiler/view/Widgets/ViewProfileWidget.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'Widgets/GlobalMainWidget.dart';

class ViewProfilePage extends StatefulWidget {
  const ViewProfilePage({Key? key}) : super(key: key);

  @override
  State<ViewProfilePage> createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage> {
  bool isToggled = true;

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(Container(
      margin: EdgeInsets.all(AllDimension.sixteen),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ViewProfileWidget.toolbar("Your Profile", "View User",context),
            SizedBox(height: AllDimension.eightyFour),
            ViewProfileWidget.profilePhotoSection(),
            SizedBox(height: AllDimension.sixteen),
            Card(
              child: Container(
                padding: EdgeInsets.all(AllDimension.eight),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(AllDimension.eight),
                      decoration: BoxDecoration(
                        color: AllColors.lightGreenColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(AllDimension.oneHundred)),
                      ),
                      child: Image.asset(AllImages.profile,
                          height: AllDimension.fourty,
                          width: AllDimension.fourty),
                    ),
                    SizedBox(width: AllDimension.eight),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Availability",
                            style: TextStyle(
                                fontSize: AllDimension.sixteen,
                                fontWeight: FontWeight.bold,
                                color: AllColors.blackColor),
                          ),
                          Text(
                            "If turned off, people won’t be able to contact you.",
                            style: TextStyle(fontSize: AllDimension.sixteen),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: AllDimension.eight),
                    Transform.rotate(
                      angle: 180 * pi / 180,
                      child: FlutterSwitch(
                        height: 24.0,
                        width: 40.0,
                        padding: 4.0,
                        toggleSize: 16.0,
                        borderRadius: 10.0,
                        activeColor: AllColors.mainThemeColor,
                        value: isToggled,
                        onToggle: (value) {
                          setState(() {
                            isToggled = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: AllDimension.sixteen),
            Text("Feedback",
                style: TextStyle(
                    fontSize: AllDimension.twentyFour,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: AllDimension.eight),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(AllDimension.ten),
                  margin: EdgeInsets.only(right: AllDimension.eight),
                  decoration: BoxDecoration(
                    color: AllColors.mainThemeColor,
                    borderRadius:
                        BorderRadius.all(Radius.circular(AllDimension.eight)),
                  ),
                  child: Text("4.5",
                      style: TextStyle(color: AllColors.whiteColor)),
                ),
                RatingBar.readOnly(
                  filledColor: AllColors.mainThemeColor,
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  initialRating: 5,
                  maxRating: 5,
                  size: AllDimension.thirty,
                ),
                Text(
                  "(234 Reviews)",
                  style: TextStyle(
                      fontSize: AllDimension.sixteen,
                      color: AllColors.officialGreyColor),
                )
              ],
            ),
            SizedBox(height: AllDimension.sixteen),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return FeedbackWidget.FeedBackItem(context);
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
