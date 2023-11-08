import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:snack_express/injector/injector.dart';
import 'package:snack_express/provider.dart';
import 'package:snack_express/snack_express_app.dart';
import 'package:snack_express/utils/hydrated/storage.dart';

void start() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Injector().init();
    HydratedBloc.storage = kIsWeb
        ? await HydratedStorage.build(
            storageDirectory: HydratedStorage.webStorageDirectory,
          )
        : await HiveHydratedBlocStorage.getInstance();
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     systemNavigationBarColor: Colors.black,
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //     // statusBarIconBrightness: Brightness.light,
    //     // statusBarBrightness: Brightness.dark,
    //   ),
    //   // SystemUiOverlayStyle.light,
    // );
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(const ExProvider(child: SnackExpressApp()));
  }, (error, stack) {});
}
