import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/CustomClasses/AllTitles.dart';
import 'package:antoiler/view/ChargesDetailsTabs/ChargesTab.dart';
import 'package:antoiler/view/ChargesDetailsTabs/ReviewTab.dart';
import 'package:antoiler/view/ChargesDetailsTabs/WorkDoneTab.dart';
import 'package:antoiler/view/Widgets/ChargesDetailsWidget.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:antoiler/view/Widgets/WishlistTabWidget.dart';
import 'package:antoiler/view/WishlistTabs/ContactedTabPage.dart';
import 'package:antoiler/view/WishlistTabs/HiredTabPage.dart';
import 'package:antoiler/view/WishlistTabs/WishlistTabPage.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  PageController? _pageController;
  int activePageIndex = 0;
  bool isVisibleUserArea = true;

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        SingleChildScrollView(
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(
                      left: AllDimension.two,
                  right: AllDimension.two),
                  padding: EdgeInsets.all(AllDimension.eight),
                  child: Row(
                    children: <Widget>[

                      Container(
                          margin: EdgeInsets.all(AllDimension.eight),
                          child: Icon(Icons.arrow_back_ios_new_rounded,size: 16)
                      ),

                      if(activePageIndex ==0)
                      WishlistTabWidget.wishlistTabTitle(AllTitles.hired),
                      if(activePageIndex ==1)
                      WishlistTabWidget.wishlistTabTitle(AllTitles.contacted),
                      if(activePageIndex ==2)
                      WishlistTabWidget.wishlistTabTitle(AllTitles.wishlist),

                    ],
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: AllDimension.eight),
                              child: _menuBar(context),
                            ),
                            Expanded(
                              flex: 3,
                              child: PageView(
                                controller: _pageController,
                                physics: const ClampingScrollPhysics(),
                                onPageChanged: (int i) {
                                  FocusScope.of(context).requestFocus(FocusNode());
                                  setState(() {
                                    activePageIndex = i;
                                  });
                                },
                                children: <Widget>[
                                  ConstrainedBox(
                                    constraints: const BoxConstraints.expand(),
                                    child: HiredTabPage(),
                                  ),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints.expand(),
                                    child: ContactedTabPage(),
                                  ),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints.expand(),
                                    child: WishlistTabPage(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                )

              ],
            ),
          ),
        ));
  }

  Widget _menuBar(BuildContext context) {
    return Container(
      height: AllDimension.fifty,
      margin: EdgeInsets.only(left: AllDimension.eight,right: AllDimension.eight),
      decoration: BoxDecoration(
        color: AllColors.lightMainThemeColor,
        borderRadius: BorderRadius.all(Radius.circular(AllDimension.twentyFour)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          WishlistTabWidget.tabTitle(context, _onHiredButtonPress, 0, AllTitles.hired,activePageIndex),
          WishlistTabWidget.tabTitle(context, _onContactedButtonPress, 1, AllTitles.contacted,activePageIndex),
          WishlistTabWidget.tabTitle(context, _onWishlistButtonPress, 2, AllTitles.wishlist,activePageIndex),
        ],
      ),
    );
  }

  void _onHiredButtonPress() {
    _pageController!.animateToPage(0,
        duration: const Duration(milliseconds: 100), curve: Curves.decelerate);
  }
  void _onContactedButtonPress() {
    _pageController!.animateToPage(1,
        duration: const Duration(milliseconds: 100), curve: Curves.decelerate);
  }
  void _onWishlistButtonPress() {
    _pageController!.animateToPage(2,
        duration: const Duration(milliseconds: 100), curve: Curves.decelerate);
  }
}