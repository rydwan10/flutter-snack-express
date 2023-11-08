import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_express/features/app/app_screen.dart';

class AppMain extends StatefulWidget {
  static final route = GetPage(name: '/', page: () => AppMain());
  const AppMain({Key? key}) : super(key: key);

  @override
  State<AppMain> createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  Widget build(BuildContext context) {
    return AppScreen();
  }
}
