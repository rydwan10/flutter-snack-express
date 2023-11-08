import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:snack_express/config/theme/theme.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';
import 'package:snack_express/utils/navigate.dart';
import 'package:snack_express/widgets/atoms/ex_icon_button.dart';
import 'package:snack_express/widgets/templates/focus_detector.dart';

class ExScreen extends StatelessWidget {
  /// Customs
  final VoidCallback? onBack;
  final Widget body;
  final bool scrollableBody;
  final List<Widget>? backgroundWidgets;
  final List<Widget>? footers;
  final EdgeInsets footersPadding;
  final bool forceDarkTheme;

  /// Smart Refresh
  final RefreshController? refreshController;
  final VoidCallback? onRefresh;
  final VoidCallback? onRefreshLoading;
  final Widget? refreshHeader;
  final Widget? refreshFooter;
  final bool enablePullUp;
  final bool enablePullDown;

  /// Scaffold Related
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget? bottomSheet;
  final DragStartBehavior drawerDragStartBehavior;
  final double? drawerEdgeDragWidth;
  final bool drawerEnableOpenDragGesture;
  final Color? drawerScrimColor;
  final bool endDrawerEnableOpenDragGesture;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final DrawerCallback? onDrawerChanged;
  final DrawerCallback? onEndDrawerChanged;
  final String? restorationId;
  final bool primary;

  /// Appbar Related
  final String? title;
  final bool centerTitle;
  final bool hasBackArrow;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? appBar;
  final bool useLeading;
  final bool useWillPopScope;

  /// SafeArea Related
  final bool hasSafeArea;
  final bool safeTop;
  final bool? safeBottom;
  final bool safeLeft;
  final bool safeRight;

  /// Focus Detector Related
  final VoidCallback? onFocusGained;
  final VoidCallback? onFocusLost;
  final VoidCallback? onVisibilityGained;
  final VoidCallback? onVisibilityLost;
  final VoidCallback? onForegroundGained;
  final VoidCallback? onForegroundLost;

  const ExScreen({
    Key? key,
    this.onBack,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.drawer,
    this.endDrawer,
    this.bottomSheet,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.drawerScrimColor,
    this.endDrawerEnableOpenDragGesture = true,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.floatingActionButtonAnimator,
    this.floatingActionButtonLocation,
    this.onDrawerChanged,
    this.onEndDrawerChanged,
    this.restorationId,
    this.primary = true,
    this.title,
    this.centerTitle = true,
    this.hasBackArrow = true,
    this.leading,
    this.actions,
    this.appBar,
    this.body = const SizedBox(),
    this.scrollableBody = true,
    this.backgroundWidgets,
    this.footers,
    this.footersPadding = const EdgeInsets.all(16),
    this.refreshController,
    this.onRefresh,
    this.onRefreshLoading,
    this.refreshFooter,
    this.refreshHeader,
    this.forceDarkTheme = false,
    this.hasSafeArea = true,
    this.safeTop = true,
    this.safeBottom,
    this.safeLeft = true,
    this.safeRight = true,
    this.enablePullUp = false,
    this.enablePullDown = false,
    this.useLeading = true,
    this.useWillPopScope = false,
    this.onFocusGained,
    this.onFocusLost,
    this.onVisibilityGained,
    this.onVisibilityLost,
    this.onForegroundGained,
    this.onForegroundLost,
  }) : super(key: key);

  void _onBack() {
    if (onBack != null) {
      onBack!();
    } else {
      Navigate.back();
    }
  }

  Widget _buildBodyContent() {
    Widget _body = body;

    if (scrollableBody) _body = SingleChildScrollView(child: _body);
    if (refreshController != null) {
      _body = SmartRefresher(
        controller: refreshController!,
        onRefresh: onRefresh,
        onLoading: onRefreshLoading,
        enablePullUp: enablePullUp,
        enablePullDown: enablePullDown,
        header: refreshHeader,
        footer: refreshFooter,
        child: _body,
      );
    }

    if (footers == null) return _body;

    if (Platform.isIOS) {
      footers!.add(const Divider(height: 32, color: Colors.transparent));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: _body),
        Padding(
          padding: footersPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: footers!,
          ),
        ),
      ],
    );
  }

  Widget _buildBodyWithBackgroundWidget() {
    return Stack(
      children: [
        if (backgroundWidgets != null) ...backgroundWidgets!,
        _buildBodyContent(),
      ],
    );
  }

  Widget _buildBody() {
    Widget _body = backgroundWidgets == null
        ? _buildBodyContent()
        : _buildBodyWithBackgroundWidget();
    return hasSafeArea
        ? SafeArea(
            left: safeLeft,
            top: safeTop,
            right: safeRight,
            bottom: safeBottom ?? Platform.isAndroid,
            child: _body,
          )
        : _body;
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? "",
        style: context.exTextTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: useLeading
          ? leading
          : (hasBackArrow
              ? ExIconButton.back(onBack: _onBack)
              : const SizedBox.shrink()),
      leadingWidth: centerTitle == false ? 25 : null,
      actions: actions,
      centerTitle: centerTitle,
    );
  }

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? _appBar = appBar;
    if (title != null) _appBar ??= _buildAppbar(context);

    Widget _widget = WillPopScope(
      onWillPop: useWillPopScope
          ? () {
              _onBack();
              return Future.value(false);
            }
          : null,
      child: FocusDetector(
        onFocusGained: onFocusGained,
        onFocusLost: onFocusLost,
        onVisibilityGained: onVisibilityGained,
        onVisibilityLost: onVisibilityLost,
        onForegroundGained: onForegroundGained,
        onForegroundLost: onForegroundLost,
        child: Scaffold(
          key: key,
          backgroundColor: backgroundColor,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          appBar: _appBar,
          floatingActionButton: floatingActionButton,
          bottomNavigationBar: bottomNavigationBar,
          drawer: drawer,
          endDrawer: endDrawer,
          bottomSheet: bottomSheet,
          drawerDragStartBehavior: drawerDragStartBehavior,
          drawerEdgeDragWidth: drawerEdgeDragWidth,
          drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
          drawerScrimColor: drawerScrimColor,
          endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
          extendBody: extendBody,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
          floatingActionButtonAnimator: floatingActionButtonAnimator,
          floatingActionButtonLocation: floatingActionButtonLocation,
          onDrawerChanged: onDrawerChanged,
          onEndDrawerChanged: onEndDrawerChanged,
          restorationId: restorationId,
          primary: primary,
          body: _buildBody(),
        ),
      ),
    );

    if (forceDarkTheme) {
      _widget = Theme(
        data: ExTheme.buildByType(ExThemeType.Dark).themeData,
        child: _widget,
      );
    }

    return _widget;
  }
}
