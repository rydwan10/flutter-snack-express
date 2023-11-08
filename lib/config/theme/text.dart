part of 'theme.dart';

/// The 2018 spec has thirteen text styles:
/// ```
/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5
class ExThemeText extends BaseData {
  /// System Text Theme
  final TextTheme textTheme;
  final TextTheme primaryTextTheme;
  final TextSelectionThemeData textSelectionTheme;

  /// Ex Design System Theme
  final TextStyle textXxl;
  final TextStyle textXl;
  final TextStyle textLg;
  final TextStyle textBase;
  final TextStyle textSm;
  final TextStyle textXs;
  final TextStyle textXxs;
  final TextStyle headlineLg;

  ExThemeText({
    required this.textTheme,
    required this.primaryTextTheme,
    required this.textSelectionTheme,
    required this.textXxl,
    required this.textXl,
    required this.textLg,
    required this.textBase,
    required this.textSm,
    required this.textXs,
    required this.textXxs,
    required this.headlineLg,
  });

  factory ExThemeText.create({
    required ThemeData theme,
    required ExThemeColors colors,
    required ExThemeFont font,
  }) {
    return ExThemeText(
      textTheme: theme.textTheme.copyWith(
        bodyLarge: (theme.textTheme.bodyLarge ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font16,
        ),
        bodyMedium: (theme.textTheme.bodyMedium ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font14,
        ),
        displayLarge: (theme.textTheme.displayLarge ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font96,
        ),
        displayMedium: (theme.textTheme.displayMedium ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font60,
        ),
        displaySmall: (theme.textTheme.displaySmall ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font48,
        ),
        headlineMedium:
            (theme.textTheme.headlineMedium ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font34,
        ),
        headlineSmall: (theme.textTheme.headlineSmall ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font24,
        ),
        titleLarge: (theme.textTheme.titleLarge ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontWeight: FontWeight.w500,
          fontSize: font20,
        ),
        titleMedium: (theme.textTheme.titleMedium ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font16,
        ),
        titleSmall: (theme.textTheme.titleSmall ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontWeight: FontWeight.w500,
          fontSize: font14,
        ),
        bodySmall: (theme.textTheme.bodySmall ?? TextStyle()).copyWith(
          color: colors.text.additional,
          fontWeight: FontWeight.w500,
          fontSize: font12,
        ),
        labelSmall: (theme.textTheme.labelSmall ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font10,
        ),
      ),
      primaryTextTheme: theme.primaryTextTheme.copyWith(
        bodyLarge: (theme.textTheme.bodyLarge ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font16,
        ),
        bodyMedium: (theme.textTheme.bodyMedium ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font14,
        ),
        headlineMedium:
            (theme.textTheme.headlineMedium ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font34,
        ),
        headlineSmall: (theme.textTheme.headlineSmall ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font24,
        ),
        titleLarge: (theme.textTheme.titleLarge ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontWeight: FontWeight.w500,
          fontSize: font20,
        ),
        titleMedium: (theme.textTheme.titleMedium ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font16,
        ),
        titleSmall: (theme.textTheme.titleSmall ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontWeight: FontWeight.w500,
          fontSize: font14,
        ),
        bodySmall: (theme.textTheme.bodySmall ?? TextStyle()).copyWith(
          color: colors.text.additional,
          fontWeight: FontWeight.w500,
          fontSize: font12,
        ),
        labelSmall: (theme.textTheme.labelSmall ?? TextStyle()).copyWith(
          color: colors.text.main,
          fontSize: font10,
        ),
      ),
      textSelectionTheme: theme.textSelectionTheme,
      textXxl: (theme.textTheme.headlineSmall ?? TextStyle()).copyWith(
        color: colors.text.main,
        fontSize: font24,
      ),
      textXl: (theme.textTheme.titleLarge ?? TextStyle()).copyWith(
        color: colors.text.main,
        fontSize: font20,
      ),
      textLg: (theme.textTheme.bodyLarge ?? TextStyle()).copyWith(
        color: colors.text.main,
        fontSize: font18,
      ),
      textBase: (theme.textTheme.bodyLarge ?? TextStyle()).copyWith(
        color: colors.text.main,
        fontSize: font16,
      ),
      textSm: (theme.textTheme.bodyMedium ?? TextStyle()).copyWith(
        color: colors.text.main,
        fontSize: font14,
      ),
      textXs: (theme.textTheme.bodySmall ?? TextStyle()).copyWith(
        color: colors.text.main,
        fontSize: font12,
      ),
      textXxs: (theme.textTheme.bodySmall ?? TextStyle()).copyWith(
        color: colors.text.main,
        fontSize: font10,
      ),
      headlineLg: (theme.textTheme.displaySmall ?? TextStyle()).copyWith(
        color: colors.text.main,
        fontSize: font48,
      ),
    );
  }

  @override
  List<Object?> get props => [
        textTheme,
        primaryTextTheme,
        textSelectionTheme,
        textXxl,
        textXl,
        textLg,
        textBase,
        textSm,
        textXs,
        textXxs,
      ];
}
