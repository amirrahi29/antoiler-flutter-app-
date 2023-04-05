import 'package:antoiler/CustomClasses/AllColors.dart';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';
import 'Widgets/GlobalMainWidget.dart';

class SingleProfilePage extends StatefulWidget {
  const SingleProfilePage({Key? key}) : super(key: key);

  @override
  State<SingleProfilePage> createState() => _SingleProfilePageState();
}

class _SingleProfilePageState extends State<SingleProfilePage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: AllColors.lightMainThemeColor,
              alignment: Alignment.center,
              padding: EdgeInsets.all(AllDimension.sixteen),
              child: Row(
                children: <Widget>[

                  Image.asset(AllImages.backk,
                      height: AllDimension.sixteen,
                      width: AllDimension.sixteen
                  ),
                  SizedBox(width: AllDimension.eight),
                  Text("Back",
                  style: TextStyle(
                    fontSize: AllDimension.fourteen,
                    fontWeight: FontWeight.bold
                  ))

                ],
              ),
            ),
          ),

            // VimeoVideoPlayer(
            //   vimeoPlayerModel: VimeoPlayerModel(
            //     url: 'https://www.youtube.com/watch?v=FYrDBcSkYPA',
            //     systemUiOverlay: const [
            //       SystemUiOverlay.top,
            //       SystemUiOverlay.bottom,
            //     ],
            //   ),
            // )

        ],
      ),
    ));
  }
}
