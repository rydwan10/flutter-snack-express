import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
// import 'package:snack_express/cubit/bottom_tab/bottom_tab_cubit.dart';
// import 'package:snack_express/injector/injector.dart';
// import 'package:snack_express/types/bottom_tab.dart';

class Navigate {
  static Future<T?> push<T>(
    Widget widget, {
    String? route,
    bool fullscreenDialog = false,
  }) =>
      Navigator.push(
        Get.context!,
        MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => widget,
          settings: RouteSettings(
            name: route == null ? '/${widget.toString()}' : '/$route',
          ),
        ),
      );

  static void back<T>({T? data, BuildContext? context}) =>
      Navigator.pop(context ?? Get.context!, data);

  static Future<T?> pushReplacement<T>(
    Widget widget, {
    String? route,
    bool fullscreenDialog = false,
  }) =>
      Navigator.pushReplacement(
        Get.context!,
        MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => widget,
          settings: RouteSettings(
            name: route == null ? '/${widget.toString()}' : '/$route',
          ),
        ),
      );

  static Future<T?> pushAndRemoveUntil<T>(
    Widget widget, {
    String? route,
    bool fullscreenDialog = false,
  }) =>
      Navigator.pushAndRemoveUntil(
        Get.context!,
        MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => widget,
          settings: RouteSettings(
            name: route == null ? '/${widget.toString()}' : '/$route',
          ),
        ),
        ModalRoute.withName('/'),
      );

  static void popUntil({Widget? widget}) => Navigator.popUntil(
        Get.context!,
        ModalRoute.withName(widget != null ? '/${widget.toString()}' : '/'),
      );

  // static void backAll({bool isBackToHome = false}) async {
  //   if (Get.currentRoute != "/" &&
  //       !Get.currentRoute.contains("MyStatefulWidget")) {
  //     final bottomTabCubit = Get.context!.read<BottomTabCubit>();
  //     final int bottomBarIndex = isBackToHome ? 3 : bottomTabCubit.state;
  //     if (bottomBarIndex == BottomTabEnum.wallet.value) {
  //       bottomTabCubit.changeTab(BottomTabEnum.home.value);
  //     }
  //     Navigate.backToRootTab();
  //     // await Navigate.pushNamed(WelcomeMain.route.name);
  //   }
  // }

  // static Future<void> setCurrentScreen(String route) async {
  //   try {
  //     await analytics.setCurrentScreen(screenName: '/$route');
  //   } catch (_) {}
  // }

  // static void backToRootTab({int? bottomTab}) {
  //   popUntil();
  //   final bottomTabCubit = Get.context!.read<BottomTabCubit>();
  //   bottomTabCubit.changeTab(bottomTab ?? BottomTabEnum.home.value);
  // }

  static Future<T?> pushReplacementWithOutAnimation<T>(
    Widget widget, {
    String? route,
    bool fullscreenDialog = false,
  }) =>
      Navigator.pushReplacement(
        Get.context!,
        PageRouteBuilder(
          fullscreenDialog: fullscreenDialog,
          pageBuilder: (_, __, ___) => widget,
          settings: RouteSettings(name: '/${widget.toString()}'),
        ),
      );

  static Future<T?> pushNamed<T>(
    String routeName, {
    dynamic arguments,
    Map<String, String>? parameters,
  }) async {
    String fullRouteName = _setParameterToRouteName(routeName);
    return await Navigator.pushNamed(
      Get.context!,
      fullRouteName,
      arguments: arguments,
    );
  }

  /// use this when you want to navigate to children of the page
  /// with the parent directly (if parent not push)
  // static Future<T?> pushNamedParentChild<T>({
  //   required String parentRoute,
  //   required String childRoute,
  //   dynamic parentArgument,
  //   dynamic childArgument,
  //   Map<String, String>? parameters,
  // }) async {
  //   unawaited(pushNamed(
  //     parentRoute,
  //     arguments: parentArgument,
  //   ));
  //   return await pushNamedChild(
  //     childRoute,
  //     arguments: childArgument,
  //     parameters: parameters,
  //   );
  // }

  /// use this when the page you want to visit is a child from another route
  /// if the parent already pushed
  // static Future<T?> pushNamedChild<T>(
  //   String childRouteName, {
  //   dynamic arguments,
  //   Map<String, String>? parameters,
  // }) async {
  //   final parentRouteName = Injector().find<RouteLogger>().getLatestPath;
  //   return await pushNamed(
  //     '$parentRouteName$childRouteName',
  //     arguments: arguments,
  //     parameters: parameters,
  //   );
  // }

  static Future<T?> pushReplacementNamed<T>(
    String routeName, {
    dynamic arguments,
  }) async {
    String fullRouteName = _setParameterToRouteName(routeName);
    return await Navigator.pushReplacementNamed(
      Get.context!,
      fullRouteName,
      arguments: arguments,
    );
  }

  static Future<T?> pushReplacementNamedWithoutAnimation<T>(
    String routeName, {
    dynamic arguments,
  }) async {
    String fullRouteName = _setParameterToRouteName(routeName);
    return await Navigator.pushReplacementNamed(
      Get.context!,
      fullRouteName,
      arguments: arguments,
    );
  }

  static Future<T?> pushNamedAndRemoveUntil<T>(
    String routeName, {
    String? predicate,
    dynamic arguments,
  }) {
    String fullRouteName = _setParameterToRouteName(routeName);
    return Navigator.pushNamedAndRemoveUntil(
      Get.context!,
      fullRouteName,
      ModalRoute.withName(predicate ?? '/'),
      arguments: arguments,
    );
  }

  // static Future<T?> pushNamedParentChildAndRemoveUntil<T>({
  //   required String parentRoute,
  //   required String childRoute,
  //   dynamic parentArgument,
  //   dynamic childArgument,
  //   Map<String, String>? parameters,
  //   String? predicate,
  // }) async {
  //   String fullRouteName = _setParameterToRouteName(parentRoute);
  //   unawaited(pushNamedAndRemoveUntil(
  //     fullRouteName,
  //     predicate: predicate,
  //     arguments: parentArgument,
  //   ));
  //   return await pushNamedChild(
  //     childRoute,
  //     arguments: childArgument,
  //     parameters: parameters,
  //   );
  // }

  static String _setParameterToRouteName(
    String routeName, {
    Map<String, String>? parameters,
  }) {
    if (parameters != null) {
      final uri = Uri(path: routeName, queryParameters: parameters);
      return uri.toString();
    }
    return routeName;
  }

  // static void navigationViaDeeplink({
  //   required String routeName,
  //   Map<String, dynamic>? data,
  // }) {
  //   if (Uri.parse(routeName).isAbsolute) {
  //     push(RekuInAppWebViewScreen(title: '', url: urlEmbed(routeName)));
  //   } else {
  //     pushNamed(routeName, arguments: data);
  //   }
  // }
}

extension GetPageExt<T> on GetPage<T> {
  String nameWithPath(Map<String, dynamic> path) {
    final splitName = name.split('/');
    for (int i = 0; i < splitName.length; i++) {
      if (splitName[i].contains(':')) {
        splitName[i] = path[splitName[i].replaceAll(':', '')].toString();
      }
    }
    return splitName.join('/');
  }
}
