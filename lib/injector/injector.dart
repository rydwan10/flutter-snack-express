import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
// import 'package:snack_express/config/environment/env.dart';
import 'package:snack_express/injector/ex_injector.dart';
// import 'package:snack_express/utils/firebase/firebase_manager.dart';
// import 'package:snack_express/utils/firebase/firebase_realtime_database/firebase_realtime_database.dart';

abstract class BaseInjector {
  void injectNetwork(GetIt injector);

  void injectData(GetIt injector);

  void injectUtils(GetIt injector);

  // void injectEnv(GetIt injector, ExEnv rekuEnv);
}

/// [Injector] is a Service Locator for Dart and Flutter.
/// Works like InheritedWidget or Provider.
class Injector {
  Injector._();

  static final Injector _i = Injector._();

  factory Injector() => _i;

  /* ----------- PARAMETER ----------- */
  final _container = GetIt.instance;

  /* ----------- FUNCTION ----------- */

  Future<void> init() async {
    // ExInjector().injectEnv(_container);
    ExInjector().injectData(_container);
    ExInjector().injectNetwork(_container);
    ExInjector().injectUtils(_container);

    /// Initialize
    // await find<FirebaseManager>().init();
  }

  // Future<void> init({required ExEnv rekuEnv}) async {
  //   ExInjector().injectEnv(_container, rekuEnv);
  //   ExInjector().injectData(_container);
  //   ExInjector().injectNetwork(_container);
  //   ExInjector().injectUtils(_container);
  //
  //   /// Initialize
  //   await find<FirebaseManager>().init();
  // }

  /// The build context in which the widget with this key builds.
  ///
  /// The current context is null if there is no widget in the tree that matches
  /// this global key.
  BuildContext? get context => Get.context;

  T find<T extends Object>() => _container.get<T>();
}

extension GetItExtension on GetIt {
  // void registerFirebaseRTDB<T extends FirebaseRTDB>(
  //   FactoryFunc<T> create, {
  //   String? instanceName,
  // }) {
  //   registerLazySingleton((() {
  //     final db = create();
  //     Injector().find<FirebaseManager>().db.addRTDB(db);
  //     return db;
  //   }));
  // }
}
