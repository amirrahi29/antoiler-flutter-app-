import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/BottomTabItems.dart';
import 'package:flutter/material.dart';
import 'Widgets/GlobalMainWidget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  //bottom tab items class
  final _bottomTabItems = BottomTabItems();

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        _bottomTabItems.allBottomPages[_bottomTabItems.visit],
        bottomNavigationBar: BottomNavigationBar(
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
        ));
  }
}
