import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:snack_express/config/route/route.dart';
import 'package:snack_express/cubit/preferences_theme/preferences_theme_cubit.dart';
import 'package:snack_express/injector/injector.dart';
import 'package:snack_express/models/preferences_theme.dart';

class SnackExpressApp extends StatelessWidget {
  const SnackExpressApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreferencesThemeCubit, PreferencesTheme>(
      builder: (context, themeState) {
        return GetMaterialApp(
          getPages: RouteData.routes,
          debugShowCheckedModeBanner: false,
          enableLog: false,
          navigatorKey: Injector().find(),
          title: "Snack Express",
          theme: themeState.theme.themeData,
        );
      },
    );
  }
}
