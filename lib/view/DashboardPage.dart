import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/BottomTabItems.dart';
import 'package:antoiler/view_model/DashboardPageViewModel.dart';
import 'package:flutter/material.dart';
import 'Widgets/GlobalMainWidget.dart';
import 'package:get/get.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  //bottom tab items class
  final _bottomTabItems = BottomTabItems();
  //viewmodel
  final dashboardViewPageModel = Get.put(DashboardPageViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(()=>GlobalMainWidget.globalMainWidget(
        _bottomTabItems.allBottomPages[_bottomTabItems.visit],
        bottomNavigationBar: dashboardViewPageModel.isPageScroll.value == true?
        BottomNavigationBar(
          currentIndex: _bottomTabItems.visit,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AllColors.blackColor,
          items: _bottomTabItems.allTabs(
              _bottomTabItems.visit, _bottomTabItems.selectedTab),
          onTap: (int index) {
            setState(() {
              _bottomTabItems.selectedTab = index;
              _bottomTabItems.visit = index;
            });
          },
        ):null
    ));
  }
}
