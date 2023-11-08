import 'package:flutter/material.dart';
import 'package:snack_express/features/discount/discount_screen.dart';

class DiscountMain extends StatefulWidget {
  const DiscountMain({Key? key}) : super(key: key);

  @override
  State<DiscountMain> createState() => _DiscountMainState();
}

class _DiscountMainState extends State<DiscountMain> {
  @override
  Widget build(BuildContext context) {
    return DiscountScreen();
  }
}
