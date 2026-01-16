import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  // 主视图
  // Widget _buildView() {
  //   return const Center(
  //     child: Text("SplashPage"),
  //   );
  // }

  Widget _buildView() {
    return Column(
      children: [
        GetBuilder<SplashController>(
          id: 'splash_title', // 这里表示局部更新
          builder: (_) {
            return Center(child: Text(controller.title));
          },
        ),
        ElevatedButton(
          onPressed: () {
            controller.onTap(DateTime.now().microsecondsSinceEpoch);
          },
          child: Text('立刻点击'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("splash")),
          body: SafeArea(child: _buildView()),
        );
      },
    );
  }
}
