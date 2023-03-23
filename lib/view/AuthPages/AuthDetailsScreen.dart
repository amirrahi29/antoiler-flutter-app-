import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:flutter/material.dart';

class AuthDetailsPage extends StatefulWidget {
  const AuthDetailsPage({Key? key}) : super(key: key);

  @override
  State<AuthDetailsPage> createState() => _AuthDetailsScreenState();
}

class _AuthDetailsScreenState extends State<AuthDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("AuthDetail Page")
        ],
      ),
    ));
  }
}