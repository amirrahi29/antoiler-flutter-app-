import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ContactedTabPage extends StatefulWidget {
  const ContactedTabPage({Key? key}) : super(key: key);

  @override
  State<ContactedTabPage> createState() => _ContactedTabPageState();
}

class _ContactedTabPageState extends State<ContactedTabPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return Card(
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(AllDimension.eight),
                                    margin: EdgeInsets.only(right: AllDimension.eight),
                                    decoration: BoxDecoration(
                                      color: AllColors.lightMainThemeColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(AllDimension.oneHundred)),
                                    ),
                                    child: Image.asset(AllImages.call,height: AllDimension.twenty,
                                        width: AllDimension.twenty),
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

                  ],
                ),
              );
            }
        )
    );
  }
}