import 'package:flutter/material.dart';
import 'package:snack_express/features/home/home_screen.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
