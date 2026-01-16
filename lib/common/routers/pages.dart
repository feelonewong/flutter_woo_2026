import 'package:flutter_woo_2026/pages/index.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'names.dart';

class RoutePages {
  // 列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.systemLogin,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
