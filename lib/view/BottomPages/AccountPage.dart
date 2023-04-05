import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/view/Widgets/AccountWidget.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:flutter/material.dart';
import 'package:antoiler/CustomClasses/AllColors.dart';
class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        Container(
          margin: EdgeInsets.all(AllDimension.sixteen),
          child: SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            GlobalMainWidget.backBtn("Your Profile",context),
            AccountWidget.accountPhotoSection(),
            Image.asset(AllImages.employes,
                height: AllDimension.threeHundred,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill),

            Text("Step into the Spotlight and Showcase your talent with Antoiler",
            style: TextStyle(fontSize: AllDimension.sixteen,
            fontWeight: FontWeight.bold),textAlign: TextAlign.center),

            SizedBox(height: AllDimension.thirtyTwo),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(AllDimension.four),
              padding: EdgeInsets.only(
                left: AllDimension.sixteen,
                right: AllDimension.sixteen,
                top: AllDimension.sixteen,
                bottom: AllDimension.sixteen,
              ),
              decoration: BoxDecoration(
                color: AllColors.whiteColor,
                border: Border.all(
                    width: 1, color: AllColors.mainThemeColor),
                borderRadius: BorderRadius.all(
                    Radius.circular(AllDimension.eight)),
              ),
              child: Text(
                "Become an Antoiler",
                style: TextStyle(fontSize: AllDimension.twenty,
                fontWeight: FontWeight.bold,
                color: AllColors.mainThemeColor),
              ),
            )

          ],
      ),
    ),
        ));
  }
}
