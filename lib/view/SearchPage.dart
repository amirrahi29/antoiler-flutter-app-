import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/view/Widgets/SearchPageWidget.dart';
import 'package:flutter/material.dart';
import 'Widgets/GlobalMainWidget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            height: AllDimension.fifty,
            margin: EdgeInsets.all(AllDimension.eight),
            child: Row(
              children: <Widget>[

                InkWell(
                  onTap:(){
                    Navigator.pop(context);
                  },
                    child: Image.asset(AllImages.back,height: AllDimension.sixteen,width: AllDimension.sixteen)),
                Expanded(
                  child: Container(
                    height: AllDimension.fourtyFive,
                    margin: EdgeInsets.only(
                        left: AllDimension.twelve,
                        right: AllDimension.eight,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      enabled: false,
                      cursorColor: AllColors.blackColor,
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            padding: EdgeInsets.all(AllDimension.sixteen),
                            child: Image.asset(
                              AllImages.delete,
                              height: AllDimension.twelve,
                              width: AllDimension.twelve
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
                            borderSide: BorderSide(color: AllColors.officialGreyColor),
                            borderRadius:
                            BorderRadius.all(Radius.circular(AllDimension.twelve)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AllColors.officialGreyColor),
                            borderRadius:
                            BorderRadius.all(Radius.circular(AllDimension.twelve)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AllColors.officialGreyColor),
                            borderRadius:
                            BorderRadius.all(Radius.circular(AllDimension.twelve)),
                          ),
                          hintText: 'Search here...'),
                    ),
                  ),
                )
              ],
            ),
          ),

          Container(
            height: AllDimension.eightyFour,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[

                for(int i = 0; i<6; i++)
                Container(
                  width:AllDimension.oneHundred,
                  margin: EdgeInsets.all(AllDimension.four),
                  padding: EdgeInsets.only(
                    left: AllDimension.sixteen,
                    right: AllDimension.sixteen,
                    top: AllDimension.eight,
                    bottom: AllDimension.eight,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AllColors.mainThemeColor),
                    borderRadius: BorderRadius.all(Radius.circular(AllDimension.twentyFour)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Image.asset(AllImages.cat,height: AllDimension.ten,width: AllDimension.ten),
                      SizedBox(width: AllDimension.eight),

                      Text(
                        "Painter",
                        style: TextStyle(fontSize: AllDimension.twelve),
                      )

                    ],
                  ),
                )


              ],
            ),
          ),

          Container(
            height: AllDimension.threeThirty,
            color: Colors.grey[200],
            padding: EdgeInsets.all(AllDimension.eight),
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) {
                return SearchPageWidget.searchItem();
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(AllDimension.sixteen),
            child: Text("View All (50) Results",
            style: TextStyle(fontSize: AllDimension.twelve,
                color: AllColors.blueColor,
                decoration: TextDecoration.underline)),
          )


        ],
      ),
    ));
  }
}
