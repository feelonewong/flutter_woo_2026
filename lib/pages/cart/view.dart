import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class CartPage extends GetView<CartController> {
  const CartPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("CartPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      id: "cart",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("cart")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
