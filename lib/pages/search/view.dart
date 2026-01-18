import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';
import 'index.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("SearchPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
      init: SearchController(),
      id: "search",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("search")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
