import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/CustomClasses/routes/PageConstants.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class HiredTabPage extends StatefulWidget {
  const HiredTabPage({Key? key}) : super(key: key);

  @override
  State<HiredTabPage> createState() => _HiredTabPageState();
}

class _HiredTabPageState extends State<HiredTabPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
      ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, PageConstants.viewProfilePage);
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Row(
                      children: <Widget>[

                        Container(
                          height: AllDimension.seventy,
                          width: AllDimension.seventy,
                          margin: EdgeInsets.all(AllDimension.eight),
                          padding: EdgeInsets.all(AllDimension.twelve),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AllDimension.oneHundred),
                            image: DecorationImage(
                              image: AssetImage(AllImages.user),
                              fit: BoxFit.cover
                            )
                          ),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[

                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Row(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Text("Pintu Singh",
                                             style: TextStyle(color: AllColors.blackColor,
                                                 fontSize: AllDimension.sixteen,fontWeight: FontWeight.bold)),
                                         SizedBox(width: AllDimension.eight),
                                         Image.asset(AllImages.tick,height: AllDimension.sixteen,
                                             width: AllDimension.sixteen),
                                       ],
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Icon(Icons.location_on_outlined,
                                             size: AllDimension.twelve,
                                             color: AllColors.mainThemeColor),
                                         SizedBox(width: AllDimension.four),
                                         Text("City Center, Gwalior",
                                             style: TextStyle(
                                                 color: AllColors.mainThemeColor,
                                                 fontSize: AllDimension.twelve)),
                                       ],
                                     ),
                                   ],
                                 ),

                                 Expanded(
                                   child: Container(
                                     margin: EdgeInsets.only(right: AllDimension.twelve),
                                     alignment: Alignment.centerRight,
                                     child: Text("View Profile",
                                         style: TextStyle(color: AllColors.blueColor,
                                             fontSize: AllDimension.ten,
                                             fontWeight: FontWeight.bold)),
                                   ),
                                 ),

                               ],
                             ),

                              SizedBox(height: AllDimension.four),

                              Row(
                                children: <Widget>[
                                  Image.asset(AllImages.cat,height: AllDimension.sixteen,width: AllDimension.sixteen),
                                  SizedBox(width: AllDimension.eight),
                                  Text("Painter",
                                      style: TextStyle(fontSize: AllDimension.twelve))
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Last Hired: ",
                                      style: TextStyle(
                                          color: AllColors.blackColor,
                                          fontSize: AllDimension.twelve)),
                                  SizedBox(width: AllDimension.four),
                                  Text("21st Feb 2023",
                                      style: TextStyle(
                                          color: AllColors.mainThemeColor,
                                          fontSize: AllDimension.twelve)),
                                ],
                              ),

                            ],
                          ),
                        )

                      ],
                    ),

                    SizedBox(height: AllDimension.eight),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(AllDimension.eight),
                      decoration: BoxDecoration(
                        color: AllColors.lightMainThemeColor
                      ),
                      child: Row(
                        children: <Widget>[

                          Expanded(
                            child: Text("Write your feedback",
                                style: TextStyle(color: AllColors.blackColor)),
                          ),
                          SizedBox(width: AllDimension.eight),
                          Expanded(
                            child: RatingBar.readOnly(
                              filledColor: AllColors.blackColor,
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              initialRating: 5,
                              maxRating: 5,
                              size: AllDimension.sixteen,
                            ),
                          ),
                          SizedBox(width: AllDimension.eight),
                          Icon(Icons.arrow_forward,
                              size: AllDimension.sixteen)

                        ],
                      ),
                    ),


                  ],
                ),
              ),
            );
          }
      )
    );
  }
}