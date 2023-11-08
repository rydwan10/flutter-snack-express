import 'package:flutter/material.dart';
import 'package:snack_express/features/cart/cart_screen.dart';

class CartMain extends StatefulWidget {
  const CartMain({Key? key}) : super(key: key);

  @override
  State<CartMain> createState() => _CartMainState();
}

class _CartMainState extends State<CartMain> {
  @override
  Widget build(BuildContext context) {
    return CartScreen();
  }
}
