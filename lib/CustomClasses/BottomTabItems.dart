import 'package:antoiler/view/BottomPages/AccountPage.dart';
import 'package:antoiler/view/BottomPages/HomePage.dart';
import 'package:antoiler/view/BottomPages/WishlistPage.dart';
import 'package:flutter/material.dart';
import '../view/BottomPages/HiresPage.dart';
import 'AllColors.dart';
import 'AllDimension.dart';
import 'AllImages.dart';

class BottomTabItems {
  // List<TabItem> items = [];

  //tab index
  int visit = 0;
  int selectedTab = 0;

  //tab pages
  List<Widget> allBottomPages = [
    HomePage(),
    WishlistPage(),
    HiresPage(),
    AccountPage()
  ];

  //tabs icons and titles
  List<BottomNavigationBarItem> allTabs(int i,selectedColor) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(AllImages.home,
            color: selectedColor == 0?AllColors.blackColor:AllColors.officialGreyColor,
            height: selectedColor == 0?AllDimension.twentyFour:AllDimension.twentyFour
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(AllImages.wishlist,
            color: selectedColor == 1?AllColors.blackColor:AllColors.officialGreyColor,
            height: selectedColor == 1?AllDimension.twentyFour:AllDimension.twentyFour
        ),
        label: 'Wishlist',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(AllImages.hires,
            color: selectedColor == 2?AllColors.blackColor:AllColors.officialGreyColor,
            height: selectedColor == 2?AllDimension.twentyFour:AllDimension.twentyFour
        ),
        label: 'Hires',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(AllImages.account,
            color: selectedColor == 3?AllColors.blackColor:AllColors.officialGreyColor,
            height: selectedColor == 3?AllDimension.twentyFour:AllDimension.twentyFour
        ),
        label: 'Account',
      ),
    ];
  }
}