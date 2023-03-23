import 'dart:async';
import 'package:antoiler/CustomClasses/AllDimension.dart';
import 'package:antoiler/CustomClasses/routes/PageConstants.dart';
import 'package:antoiler/view/DashboardPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    launchSplashScreen();
  }

  launchSplashScreen(){
    Timer(Duration(seconds:AllDimension.three.toInt()), () {
      Get.offAllNamed(PageConstants.dashboardPage);
    });
  }

}