import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snack_express/config/theme/theme.dart';
import 'package:snack_express/cubit/preferences_theme/preferences_theme_cubit.dart';

extension BuildContextExt on BuildContext {
  ExTheme get exTheme => read<PreferencesThemeCubit>().state.theme;
  ExThemeType get exType => exTheme.type;
  ThemeData get exThemeData => exTheme.themeData;
  ExThemeText get exText => exTheme.textStyles;
  TextTheme get exTextTheme => exTheme.textStyles.textTheme;
  ExThemeImages get exImages => exTheme.images;
  ExThemeColors get exColor => exTheme.colors;
  ExThemeFont get exFont => exTheme.font;
}
