import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_express/features/shared/product_detail/product_detail_screen.dart';

class ProductDetailMain extends StatefulWidget {
  const ProductDetailMain({super.key});
  static const routeName = '/product-detail';
  static final route = GetPage(
    name: routeName,
    page: () => ProductDetailMain(),
  );

  @override
  State<ProductDetailMain> createState() => _ProductDetailMainState();
}

class _ProductDetailMainState extends State<ProductDetailMain> {
  @override
  Widget build(BuildContext context) {
    return ProductDetailScreen();
  }
}
