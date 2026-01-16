import 'package:flutter/material.dart';
import 'package:flutter_woo_2026/common/index.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  // 主视图
  // Widget _buildView() {
  //   return const HelloWidget();
  // }

  Widget _buildView() {
    return Center(
      child: Column(
        children: [
          const HelloWidget(),
          ElevatedButton(
            onPressed: () {
              controller.onTap(DateTime.now().microsecondsSinceEpoch);
            },
            child: const Text("点击"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(RouteNames.systemSplash);
            },
            child: const Text("跳转 splash"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          //  添加注释
          appBar: AppBar(title: const Text("login"), centerTitle: true),
          body: SafeArea(child: _buildView()),
        );
      },
    );
  }
}
