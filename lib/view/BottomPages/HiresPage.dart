import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:flutter/material.dart';

class HiresPage extends StatefulWidget {
  const HiresPage({Key? key}) : super(key: key);

  @override
  State<HiresPage> createState() => _HiresPageState();
}

class _HiresPageState extends State<HiresPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hires Page")
        ],
      ),
    ));
  }
}
