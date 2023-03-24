import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';
import 'Widgets/GlobalMainWidget.dart';

class ChargesDetailsPage extends StatefulWidget {
  const ChargesDetailsPage({Key? key}) : super(key: key);

  @override
  State<ChargesDetailsPage> createState() => _ChargesDetailsState();
}

class _ChargesDetailsState extends State<ChargesDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        Container(
          color: AllColors.darkMainThemeColor,
      child: SingleChildScrollView(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    height: AllDimension.twoHundred,
                    padding: EdgeInsets.all(AllDimension.eight),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AllImages.background),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Expanded(
                          child: Row(
                            children: <Widget>[

                              Image.asset(AllImages.backk,
                                  height: AllDimension.twelve,
                                  width: AllDimension.twelve),
                              SizedBox(width: AllDimension.eight),
                              Text("View Profile",
                                  style: TextStyle(fontSize: AllDimension.fourteen))

                            ],
                          ),
                        ),

                        Image.asset(AllImages.menu,
                            height: AllDimension.fourteen,
                            width: AllDimension.fourteen),

                      ],
                    ),
                  ),

                  SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AllColors.whiteColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AllDimension.twentyFour),
                              topRight: Radius.circular(AllDimension.twentyFour)),
                        ),
                      )
                  )

                ],
              ),

              Positioned(
                top: AllDimension.oneTwenty,
                  left: AllDimension.zero,
                  right: AllDimension.zero,
                  child: Image.asset(AllImages.user,
                  height: AllDimension.oneSixty,
                  width: AllDimension.oneThirty)
              )

            ],
          ),
        ),
      ),
    ));
  }
}
