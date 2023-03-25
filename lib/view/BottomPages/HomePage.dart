import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:antoiler/view/Widgets/HomePageWidgets.dart';
import 'package:antoiler/view_model/DashboardPageViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'CustomModelPopUp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ScrollController _controller = ScrollController();
  final dashboardPageViewModel = Get.put(DashboardPageViewModel());

  int activePageIndex = 0;
  bool isVisibleUserArea = true;

  @override
  void dispose() {
    _controller.removeListener(_onScrollEvent);
    super.dispose();
  }

  @override
  void initState() {
    _controller.addListener(_onScrollEvent);
    super.initState();
  }
  void _onScrollEvent() {
    final extentAfter = _controller.position.extentAfter;
    setState(() {
      if (extentAfter < 20) {
        dashboardPageViewModel.onScrollPageUpAndDown(false);
      }else{
        dashboardPageViewModel.onScrollPageUpAndDown(true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        Container(
          margin: EdgeInsets.all(AllDimension.eight),
          child: NestedScrollView(
            controller: _controller,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return <Widget>[
                //header
                HomePageWidgets.NestedWidget(
                    AllDimension.zero,
                    AllDimension.oneTen,
                    AllDimension.oneTen,
                    false,
                    false,
                    true,
                    AllColors.whiteColor,
                    HomePageWidgets.HeaderHomeWidget(context)
                ),
                //search
                HomePageWidgets.NestedWidget(
                    AllDimension.zero,
                    AllDimension.sixty,
                    AllDimension.sixty,
                    false,
                    false,
                    false,
                    AllColors.whiteColor,
                    HomePageWidgets.SearchBox(context)
                ),
                //banner
                HomePageWidgets.NestedWidget(
                    AllDimension.zero,
                    AllDimension.eightyFour,
                    AllDimension.eightyFour,
                    false,
                    false,
                    false,
                    AllColors.whiteColor,
                    HomePageWidgets.BannerWidget()
                ),
                //categories
                HomePageWidgets.NestedWidget(
                    AllDimension.zero,
                    AllDimension.oneFourty,
                    AllDimension.oneFourty,
                    false,
                    false,
                    true,
                    AllColors.whiteColor,
                    HomePageWidgets.CategoriesWidgets()
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      CustomModelPopUp.showRangeBottomSheet(context);
                    }, child: GlobalMainWidget.CustomTextWithViewAll("Painters", "Within 5KM")
                  ),
                  SizedBox(height: AllDimension.eight),
                  //list
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return HomePageWidgets.ProfessionalPersonsItems(context);
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
