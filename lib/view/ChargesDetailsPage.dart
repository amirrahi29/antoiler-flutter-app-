import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/CustomClasses/AllTitles.dart';
import 'package:antoiler/view/ChargesDetailsTabs/ChargesTab.dart';
import 'package:antoiler/view/ChargesDetailsTabs/ReviewTab.dart';
import 'package:antoiler/view/ChargesDetailsTabs/WorkDoneTab.dart';
import 'package:antoiler/view/Widgets/ChargesDetailsWidget.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'Widgets/GlobalMainWidget.dart';

class ChargesDetailsPage extends StatefulWidget {
  const ChargesDetailsPage({Key? key}) : super(key: key);

  @override
  State<ChargesDetailsPage> createState() => _ChargesDetailsState();
}

class _ChargesDetailsState extends State<ChargesDetailsPage>
    with SingleTickerProviderStateMixin {

  PageController? _pageController;
  ScrollController _controller = ScrollController();
  int activePageIndex = 0;
  bool isVisibleUserArea = true;

  @override
  void dispose() {
    _pageController!.dispose();
    _controller.removeListener(_onScrollEvent);
    super.dispose();
  }

  @override
  void initState() {
    _controller.addListener(_onScrollEvent);
    super.initState();
    _pageController = PageController();
  }

  void _onScrollEvent() {
    final extentAfter = _controller.position.extentAfter;
    setState(() {
      if (extentAfter < 100) {
        isVisibleUserArea = false;
      }else{
        isVisibleUserArea = true;
      }
    });
  }

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
                    height: isVisibleUserArea?AllDimension.twoHundred:AllDimension.fifty,
                    padding: EdgeInsets.all(AllDimension.sixteen),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AllImages.background),
                            fit: isVisibleUserArea?BoxFit.fill:BoxFit.cover
                        )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Expanded(
                          child: Row(
                            children: <Widget>[

                              InkWell(
                                onTap:(){
                                  Navigator.pop(context);
                                },
                                child: Image.asset(AllImages.backk,
                                    height: AllDimension.twelve,
                                    width: AllDimension.twelve),
                              ),
                              SizedBox(width: AllDimension.eight),
                              Text(AllTitles.viewProfile,
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
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AllColors.whiteColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AllDimension.twentyFour),
                              topRight: Radius.circular(AllDimension.twentyFour)),
                        ),
                        child: SingleChildScrollView(
                          controller: _controller,
                          child: Container(
                            margin: EdgeInsets.all(AllDimension.eight),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                ChargesDetailsWidget.UserDetailsWidget(),

                                GestureDetector(
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
                                          padding: const EdgeInsets.only(top: 20.0),
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
                                                child: ReviewTab(),
                                              ),
                                              ConstrainedBox(
                                                constraints: const BoxConstraints.expand(),
                                                child: WorkDoneTab(),
                                              ),
                                              ConstrainedBox(
                                                constraints: const BoxConstraints.expand(),
                                                child: ChargesTab(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                      )
                  )

                ],
              ),

              //user image
              Visibility(
                visible: isVisibleUserArea,
                child: Positioned(
                  top: AllDimension.oneTwenty,
                    left: AllDimension.zero,
                    right: AllDimension.zero,
                    child: Image.asset(AllImages.user,
                    height: AllDimension.oneSixty,
                    width: AllDimension.oneThirty)
                ),
              )

            ],
          ),
        ),
      ),
    ));
  }

  Widget _menuBar(BuildContext context) {
    return Container(
      height: AllDimension.fifty,
      decoration: BoxDecoration(
        color: AllColors.lightMainThemeColor,
        borderRadius: BorderRadius.all(Radius.circular(AllDimension.twentyFour)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ChargesDetailsWidget.tabTitle(context, _onReviewsButtonPress, 0, AllTitles.reviews,activePageIndex),
          ChargesDetailsWidget.tabTitle(context, _onWorkDonwButtonPress, 1, AllTitles.workDone,activePageIndex),
          ChargesDetailsWidget.tabTitle(context, _onChargesButtonPress, 2, AllTitles.charges,activePageIndex),
        ],
      ),
    );
  }

  void _onReviewsButtonPress() {
    _pageController!.animateToPage(0,
        duration: const Duration(milliseconds: 100), curve: Curves.decelerate);
  }
  void _onWorkDonwButtonPress() {
    _pageController!.animateToPage(1,
        duration: const Duration(milliseconds: 100), curve: Curves.decelerate);
  }
  void _onChargesButtonPress() {
    _pageController!.animateToPage(2,
        duration: const Duration(milliseconds: 100), curve: Curves.decelerate);
  }

}