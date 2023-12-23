import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:snack_express/base/data.dart';
import 'package:snack_express/config/theme/constant/colors.dart';
import 'package:snack_express/config/theme/constant/vector.dart';
import 'package:snack_express/constants/font_size.dart';
import 'package:snack_express/utils/extensions/color_ext.dart';

part 'colors.dart';
part 'font.dart';
part 'images.dart';
part 'text.dart';
part 'type.dart';

/// How to use:
/// To use ExTheme, make sure you have [context]
/// In case you have no context caused by call on non-widget, use `Injector().context` to get current context (careful!! as it is nullable)
/// Use [context.ExTheme] to get ExTheme
/// Use [context.ExType] to get ExTheme type
/// Use [context.ExThemeData] to get ExTheme themeData
/// Use [context.ExColor] to get ExTheme colors
/// Use [context.ExText] to get ExTheme textStyles
/// Use [context.ExImages] to get ExTheme images
/// Use [context.ExFont] to get ExTheme font
/// Use [context.ExFont] to get ExTheme font
class ExTheme extends Equatable {
  final ExThemeType type;
  final ThemeData themeData;
  final ExThemeColors colors;
  final ExThemeImages images;
  final ExThemeText textStyles;
  final ExThemeFont font;

  const ExTheme._({
    required this.type,
    required this.themeData,
    required this.colors,
    required this.images,
    required this.textStyles,
    required this.font,
  });

  factory ExTheme.build(Brightness brightness) {
    switch (brightness) {
      case Brightness.dark:
        return ExTheme._dark();
      case Brightness.light:
        return ExTheme._light();
      default:
        return ExTheme._light();
    }
  }

  factory ExTheme.buildByType(ExThemeType type) {
    switch (type) {
      case ExThemeType.Dark:
        return ExTheme._dark();
      case ExThemeType.Light:
        return ExTheme._light();
      default:
        return ExTheme._light();
    }
  }

  factory ExTheme._light() {
    ExThemeFont font = ExThemeFont.create();
    ExThemeColors _colors = ExThemeColors.light();
    ExThemeImages _images = ExThemeImages.light();
    ThemeData _defaultTheme = ThemeData(
      fontFamily: font.fontFamily,
      brightness: Brightness.light,
    );
    ExThemeText _textStyles = ExThemeText.create(
      theme: _defaultTheme,
      colors: _colors,
      font: font,
    );

    return ExTheme._(
      type: ExThemeType.Light,
      themeData: _createExThemeData(
        themeData: _defaultTheme,
        colors: _colors,
        textStyles: _textStyles,
      ),
      colors: _colors,
      images: _images,
      textStyles: _textStyles,
      font: font,
    );
  }

  factory ExTheme._dark() {
    ExThemeFont font = ExThemeFont.create();
    ExThemeColors _colors = ExThemeColors.dark();
    ExThemeImages _images = ExThemeImages.dark();
    ThemeData _defaultTheme = ThemeData(
      fontFamily: font.fontFamily,
      brightness: Brightness.dark,
    );
    ExThemeText _textStyles = ExThemeText.create(
      theme: _defaultTheme,
      colors: _colors,
      font: font,
    );

    return ExTheme._(
      type: ExThemeType.Dark,
      themeData: _createExThemeData(
        themeData: _defaultTheme,
        colors: _colors,
        textStyles: _textStyles,
      ),
      colors: _colors,
      images: _images,
      textStyles: _textStyles,
      font: font,
    );
  }

  ExTheme get inverseTheme => isLightMode ? ExTheme._dark() : ExTheme._light();

  static ThemeData _createExThemeData({
    required ThemeData themeData,
    required ExThemeColors colors,
    required ExThemeText textStyles,
  }) {
    return themeData.copyWith(
      // dividerColor: colors.singles.divider,
      // disabledColor: colors.button.disabled,
      scaffoldBackgroundColor: colors.background.main,
      // dialogBackgroundColor: colors.background.dialog,
      // shadowColor: colors.shadow.main,
      // unselectedWidgetColor: colors.icon.unselected,
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      textTheme: textStyles.textTheme,
      primaryTextTheme: textStyles.primaryTextTheme,
      textSelectionTheme: textStyles.textSelectionTheme,
      iconTheme: themeData.iconTheme.copyWith(
        color: colors.icon.contrast,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colors.icon.selected,
        backgroundColor: colors.background.navbar,
        unselectedItemColor: colors.icon.unselectedNavBar,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: colors.tabBar.labelColor,
        unselectedLabelColor: colors.tabBar.unselectedLabelColor,
        unselectedLabelStyle: textStyles.textTheme.bodyMedium?.copyWith(
          color: colors.tabBar.unselectedLabelColor,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: textStyles.textTheme.bodyMedium?.copyWith(
          color: colors.tabBar.labelColor,
          fontWeight: FontWeight.w500,
        ),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 2,
            color: colors.material.teal.shade500,
          ),
        ),
      ),
      buttonTheme: themeData.buttonTheme.copyWith(
        disabledColor: colors.button.disabled,
        buttonColor: colors.actionColors.primary,
        splashColor: colors.actionColors.primary.withOpacity(0.5),
        height: 48,
        alignedDropdown: true,
        padding: EdgeInsets.zero,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.actionColors.primary,
          disabledForegroundColor: colors.actionColors.disabled,
          disabledBackgroundColor: colors.actionColors.disabled,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24),
          elevation: 0,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shadowColor: colors.shadow.main,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledForegroundColor: colors.actionColors.disabled,
          disabledBackgroundColor: colors.actionColors.disabled,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: textStyles.textTheme.labelLarge?.copyWith(
            color: colors.actionColors.primary,
          ),
          side: BorderSide(color: colors.button.disabled),
          padding: EdgeInsets.symmetric(horizontal: 24),
          elevation: 0,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shadowColor: colors.shadow.main,
        ),
      ),
      floatingActionButtonTheme: themeData.floatingActionButtonTheme.copyWith(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
      inputDecorationTheme: _createInputDecorationTheme(
        themeData: themeData,
        colors: colors,
        textStyles: textStyles,
      ),
      appBarTheme: themeData.appBarTheme.copyWith(
        elevation: 0,
        centerTitle: true,
        backgroundColor: colors.background.main,
        titleTextStyle: themeData.textTheme.titleMedium?.copyWith(
          color: colors.text.main,
          fontWeight: FontWeight.w500,
          fontSize: font16,
        ),
        iconTheme: themeData.iconTheme.copyWith(
          color: colors.icon.contrast,
        ),
      ),
      sliderTheme: themeData.sliderTheme.copyWith(
        thumbColor: colors.slider.thumb,
        activeTrackColor: colors.slider.activeTrack,
        inactiveTrackColor: colors.slider.inactiveTrack,
      ),
      colorScheme: colors
          .createColorScheme(themeData: themeData)
          .copyWith(background: colors.background.main)
          .copyWith(
            primary: colors.material.teal.shade500,
            error: colors.error,
          ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return colors.icon.selected;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return colors.icon.selected;
          }
          return null;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return colors.icon.selected;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return colors.icon.selected;
          }
          return null;
        }),
      ),
    );
  }

  static InputDecorationTheme _createInputDecorationTheme({
    required ThemeData themeData,
    required ExThemeColors colors,
    required ExThemeText textStyles,
  }) {
    return themeData.inputDecorationTheme.copyWith(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      isDense: true,
      filled: true,
      fillColor: colors.background.textfield,
      iconColor: colors.icon.contrast,
      errorStyle: textStyles.textTheme.bodySmall?.copyWith(
        color: colors.text.error,
      ),
      hintStyle: textStyles.textTheme.bodyMedium?.copyWith(
        color: colors.text.additional,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: colors.border.main, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: colors.border.focused, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: colors.border.error, width: 1),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: colors.border.main, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: colors.border.error, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: colors.border.main, width: 1),
      ),
      errorMaxLines: 3,
    );
  }

  @override
  List<Object?> get props => [
        type,
        themeData,
        colors,
        images,
        textStyles,
      ];

  bool get isDarkMode => type == ExThemeType.Dark;

  bool get isLightMode => type == ExThemeType.Light;
}
