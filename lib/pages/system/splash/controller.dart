import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();

  String title = '';

  void onTap(int ticket) {
    title = "GetBuilder -> 点击了$ticket个按钮";
    update(['splash_title']);
  }

  void _initData() {
    update(["splash"]);
  }

  // void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
