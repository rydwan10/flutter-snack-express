import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:snack_express/config/theme/theme.dart';
import 'package:snack_express/models/preferences_theme.dart';
import 'package:snack_express/utils/common_util.dart';

class PreferencesThemeCubit extends HydratedCubit<PreferencesTheme> {
  PreferencesThemeCubit()
      : super(
          PreferencesTheme(
            theme: ExTheme.build(CommonUtil.getDeviceBrightness),
          ),
        );

  void changeTheme({ExTheme? theme}) {
    emit(
      PreferencesTheme(
        theme: theme ?? state.theme.inverseTheme,
      ),
    );
    if (state.theme.isDarkMode) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    }
  }

  @override
  PreferencesTheme? fromJson(Map<String, dynamic> json) {
    try {
      return PreferencesTheme(
        theme: ExTheme.buildByType(ExThemeType.values[json['type'] as int]),
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(PreferencesTheme state) {
    try {
      return {
        "type": state.theme.type.index,
      };
    } catch (_) {
      return null;
    }
  }
}
