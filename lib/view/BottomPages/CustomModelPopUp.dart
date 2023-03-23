import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
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
}
