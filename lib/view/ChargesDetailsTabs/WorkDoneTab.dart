import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:flutter/material.dart';

class WorkDoneTab extends StatefulWidget {
  const WorkDoneTab({Key? key}) : super(key: key);

  @override
  State<WorkDoneTab> createState() => _WorkDoneTabState();
}

class _WorkDoneTabState extends State<WorkDoneTab> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(AllDimension.eight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("WorkDone Page")
          ],
        ),
      ),
    ));
  }
}
