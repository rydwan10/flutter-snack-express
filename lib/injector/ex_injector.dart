import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:snack_express/utils/local_storage/local_storage.dart';

// import '../repositories/event.dart';
import 'injector.dart';

class ExInjector extends BaseInjector {
  // @override
  // void injectEnv(GetIt injector, RekuEnv rekuEnv) {
  //   /// Register Env
  //   injector.registerLazySingleton(() => rekuEnv);
  // }

  @override
  void injectData(GetIt injector) {
    /// Register Storage
    injector.registerLazySingleton(() => SecureLocalStorage());

    /// Register Third Party Tools
    // injector.registerLazySingleton(() => FirebaseManager());
    // injector.registerFirebaseRTDB<FirebaseDBUser>(FirebaseDBUser.create);
    // injector.registerFirebaseRTDB<FirebaseDBGlobal>(FirebaseDBGlobal.create);
    // injector.registerLazySingleton(() => AnalyticManager());
  }

  @override
  void injectUtils(GetIt injector) {
    /// Register Observers
    // injector
    //   ..registerLazySingleton(() => RouteLogger())
    //   ..registerLazySingleton(() => BlocLogger(excludeBlocName: []));

    /// Register Navigator
    injector.registerLazySingleton(() => GlobalKey<NavigatorState>());

    /// Register Alice
    /// TODO: handle alice interceptor if in release mode later
    // if (kDebugMode) {
    // injector.registerLazySingleton(
    //   () => Alice(
    //     navigatorKey: injector.get(),
    //     showInspectorOnShake: true,
    //   ),
    // );
    // }

    /// Register Helper
    // injector.registerLazySingleton(() => HelperDialog());
    //
    // injector.registerLazySingleton(() => AppLinkManager());
    //
    // injector.registerLazySingleton(() => RedirectionSecurityManager());
  }

  @override
  void injectNetwork(GetIt injector) {
    // injector.registerLazySingleton<ApiClient>(
    //   () => ApiClient(
    //     afterWares: [
    //       TokenExpiredAfterWare(),
    //       ResponseErrorDialogAfterWare(),
    //       ResponseErrorToastAfterWare(),
    //       ResponseErrorRedirectScreen(),
    //       ResponseBackToHome()
    //     ],
    //   ),
    // );
  }
}
