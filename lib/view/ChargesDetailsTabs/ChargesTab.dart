import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/view/Widgets/ChargesTabWidget.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:flutter/material.dart';

class ChargesTab extends StatefulWidget {
  const ChargesTab({Key? key}) : super(key: key);

  @override
  State<ChargesTab> createState() => _ChargesTabState();
}

class _ChargesTabState extends State<ChargesTab> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          left: AllDimension.eight,
          right: AllDimension.eight,
          top: AllDimension.sixteen,
        ),
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
            itemBuilder: (context,index){
              return ChargesTabWidget.ChargesWidgetItem(context);
            }
        ),
      ),
    ));
  }
}
