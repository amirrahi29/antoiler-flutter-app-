import 'package:antoiler/CustomClasses/AllDimension.dart';
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
        margin: EdgeInsets.all(AllDimension.eight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Charges Page")
          ],
        ),
      ),
    ));
  }
}
