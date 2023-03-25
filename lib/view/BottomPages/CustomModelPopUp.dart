import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';

class CustomModelPopUp {
  static void showRangeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: AllDimension.oneFifty,
          padding: EdgeInsets.all(AllDimension.sixteen),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AllDimension.twenty),
                  topRight: Radius.circular(AllDimension.twenty)),
              color: AllColors.whiteColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: AllDimension.eight,
                  bottom: AllDimension.sixteen,
                ),
                child: Text("Select Range",
                    style: TextStyle(
                        fontSize: AllDimension.sixteen,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                height: AllDimension.fourtyFive,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    for (int i = 0; i < 3; i++)
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(AllDimension.four),
                          padding: EdgeInsets.only(
                            left: AllDimension.sixteen,
                            right: AllDimension.sixteen,
                            top: AllDimension.eight,
                            bottom: AllDimension.eight,
                          ),
                          decoration: BoxDecoration(
                            color: AllColors.whiteColor,
                            border: Border.all(
                                width: 1, color: AllColors.mainThemeColor),
                            borderRadius: BorderRadius.all(
                                Radius.circular(AllDimension.eight)),
                          ),
                          child: Text(
                            "Painter",
                            style: TextStyle(fontSize: AllDimension.twelve),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void chooseLocationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: AllDimension.threeFifty,
          padding: EdgeInsets.all(AllDimension.sixteen),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AllDimension.twenty),
                  topRight: Radius.circular(AllDimension.twenty)),
              color: AllColors.whiteColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: AllDimension.eight,
                        bottom: AllDimension.sixteen,
                      ),
                      child: Text("Choose Location",
                          style: TextStyle(
                              fontSize: AllDimension.sixteen,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),

                  Row(
                    children: <Widget>[

                      Image.asset(AllImages.picker,
                      height: AllDimension.sixteen,
                          width: AllDimension.sixteen),

                      SizedBox(width: AllDimension.four),
                      Text("Choose Location",
                          style: TextStyle(
                              fontSize: AllDimension.twelve,
                          color: AllColors.mainThemeColor)),

                    ],
                  )

                ],
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select Location',
                  prefixIcon: Icon(Icons.location_on_outlined)
                ),
              )

            ],
          ),
        );
      },
    );
  }

  static void chooseChargesTabBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: AllDimension.threeFifty,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AllDimension.twenty),
                  topRight: Radius.circular(AllDimension.twenty)),
              color: AllColors.whiteColor),
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              Container(
                padding: EdgeInsets.all(AllDimension.sixteen),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: <Widget>[

                        Image.asset(AllImages.rupee,
                            height: AllDimension.sixteen,
                            width: AllDimension.sixteen,
                            color: AllColors.mainThemeColor),

                        SizedBox(height: AllDimension.two),
                        Text("30K",
                            style: TextStyle(
                                fontSize: AllDimension.twenty,
                                color: AllColors.mainThemeColor,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: AllDimension.four),
                        Text("Per Service",
                            style: TextStyle(
                                fontSize: AllDimension.twelve,
                                color: AllColors.mainThemeColor)),
                      ],
                    ),
                    SizedBox(height: AllDimension.eight),
                    Text("Wall-putty of 800 sqft. house (No dots) full heading appeared!",
                        style: TextStyle(
                            fontSize: AllDimension.sixteen,
                            color: AllColors.blackColor,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: AllDimension.eight),
                    Text("A handyman, also known as a fixer, handyperson or handyworker, "
                        "is a person skilled at a wide range of repairs, typically around the home. "
                        "A handyman, also known as a fixer, handyperson or handyworker, is a person skilled "
                        "at a wide range of repairs, typically around the home.",
                        style: TextStyle(
                            fontSize: AllDimension.twelve,
                            color: AllColors.officialGreyColor)),
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(AllDimension.sixteen),
                    decoration: BoxDecoration(
                      color: AllColors.mainThemeColor
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Image.asset(AllImages.call,
                            height: AllDimension.fourteen,
                            width: AllDimension.fourteen,
                            color: AllColors.whiteColor),

                        SizedBox(width: AllDimension.eight),
                        Text("Contact",
                            style: TextStyle(
                                fontSize: AllDimension.sixteen,
                                color: AllColors.whiteColor,
                                fontWeight: FontWeight.w500)),

                      ],
                    ),
                  )
              )

            ],
          ),
        );
      },
    );
  }
}
