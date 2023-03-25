import 'package:get/get.dart';

class DashboardPageViewModel extends GetxController{
  var isPageScroll = true.obs;

  onScrollPageUpAndDown(bool isScroll){
    isPageScroll.value = isScroll;
  }
}