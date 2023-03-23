import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:antoiler/view/Widgets/HomePageWidgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        Container(
          margin: EdgeInsets.all(AllDimension.eight),
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return <Widget>[
                SliverAppBar( // this is where I would like to set some minimum constraint
                  elevation: AllDimension.zero,
                  expandedHeight: AllDimension.oneTen,
                  collapsedHeight: AllDimension.oneTen,
                  automaticallyImplyLeading: false,
                  floating: false,
                  pinned: false,
                  backgroundColor: AllColors.whiteColor,
                  flexibleSpace: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        HomePageWidgets.HeaderWidget(),
                        SizedBox(height: AllDimension.eight),
                        HomePageWidgets.TitleWidget("Hire Nearby", AllDimension.twenty, FontWeight.normal, AllColors.officialGreyColor),
                        SizedBox(height: AllDimension.four),
                        HomePageWidgets.TitleWidget("Professionals", AllDimension.twentyFour, FontWeight.bold, AllColors.blackColor),
                      ],
                    ),
                  ),
                ),
                SliverAppBar(
                  elevation: AllDimension.zero,
                  expandedHeight: AllDimension.sixty,
                  collapsedHeight: AllDimension.sixty,
                  automaticallyImplyLeading: false,
                  floating: false,
                  pinned: true,
                  backgroundColor: AllColors.whiteColor,
                  flexibleSpace: HomePageWidgets.SearchBox(),
                ),
                SliverAppBar(
                  elevation: AllDimension.zero,
                  expandedHeight: AllDimension.eightyFour,
                  collapsedHeight: AllDimension.eightyFour,
                  automaticallyImplyLeading: false,
                  floating: false,
                  pinned: false,
                  backgroundColor: AllColors.whiteColor,
                  flexibleSpace: HomePageWidgets.BannerWidget(),
                ),
                SliverAppBar(
                  elevation: AllDimension.zero,
                  expandedHeight: AllDimension.oneFifty,
                  collapsedHeight: AllDimension.oneFourty,
                  automaticallyImplyLeading: false,
                  floating: false,
                  pinned: true,
                  backgroundColor: AllColors.whiteColor,
                  flexibleSpace: HomePageWidgets.CategoriesWidgets(),
                )
              ];
            },
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  GlobalMainWidget.CustomTextWithViewAll("Painters", "Within 5KM"),
                  SizedBox(height: AllDimension.eight),
                  //list
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return HomePageWidgets.ProfessionalPersonsItems();
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
