import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:antoiler/view/Widgets/GlobalMainWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Image.asset(AllImages.user),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Image.asset(AllImages.user),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset(AllImages.user),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset(AllImages.user),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 2,
                  child: Image.asset(AllImages.user),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
