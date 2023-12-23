part of 'theme.dart';

/// The main accent color groups in the scheme are [primary], [secondary],
/// and [tertiary].
///
/// * Primary colors are used for key components across the UI, such as the FAB,
///   prominent buttons, and active states.
///
/// * Secondary colors are used for less prominent components in the UI, such as
///   filter chips, while expanding the opportunity for color expression.
///
/// * Tertiary colors are used for contrasting accents that can be used to
///   balance primary and secondary colors or bring heightened attention to
///   an element, such as an input field. The tertiary colors are left
///   for makers to use at their discretion and are intended to support
///   broader color expression in products.
class ExThemeColors extends BaseData {
  final Brightness brightness;

  /// The color displayed most frequently across your app’s screens and components.
  final Color primary;

  /// A color that's clearly legible when drawn on [primary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [primary] and [onPrimary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onPrimary;

  /// An accent color used for less prominent components in the UI, such as
  /// filter chips, while expanding the opportunity for color expression.
  final Color secondary;

  /// A color that's clearly legible when drawn on [secondary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [secondary] and [onSecondary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onSecondary;

  /// A color used as a contrasting accent that can balance [primary]
  /// and [secondary] colors or bring heightened attention to an element,
  /// such as an input field.
  final Color tertiary;

  /// A color that's clearly legible when drawn on [tertiary].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [tertiary] and [onTertiary] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onTertiary;

  /// The color to use for input validation errors, e.g. for
  /// [InputDecoration.errorText].
  final Color error;

  /// A color that's clearly legible when drawn on [error].
  ///
  /// To ensure that an app is accessible, a contrast ratio between
  /// [error] and [onError] of at least 4.5:1 is recommended. See
  /// <https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html>.
  final Color onError;

  /// Ex Design System Color
  final ExThemeMaterialColors material;

  /// Colors use to paint the text widgets.
  final ExThemeTextColors text;

  /// Colors that typically appears behind content.
  final ExThemeBackgroundColors background;

  /// Colors that typically appears in specific area.
  final ExThemeForegroundColors foreground;

  /// Colors use to paint the button components.
  final ExThemeButtonColors button;

  /// Colors use to paint the toggle switch component.
  final ExThemeToggleSwitchColors toggleSwitch;

  /// Colors use to paint the border component.
  final ExThemeBorderColors border;

  /// Colors use to paint the icon component.
  final ExThemeIconColors icon;

  /// Colors use to paint the slider component.
  final ExThemeSliderColors slider;

  /// Colors use to paint the chart component.
  final ExThemeChartColors chart;

  /// Colors use to paint the toast component.
  final ExThemeToastColors toast;

  /// Colors use to paint the shimmer component.
  final ExThemeShimmerColors shimmer;

  /// A color use to paint dot (circle container use in page view).
  final ExThemeSinglesColors singles;

  /// A color use to paint the drop shadows of elevated components.
  final ExThemeShadowColors shadow;

  /// A color use to paint tab bar
  final ExThemeTabBarColors tabBar;

  final ExThemeActionColors actionColors;

  ExThemeColors({
    required this.brightness,
    required this.primary,
    Color? onPrimary,
    required this.secondary,
    Color? onSecondary,
    required this.tertiary,
    Color? onTertiary,
    required this.error,
    Color? onError,
    required this.material,
    required this.text,
    required this.background,
    required this.foreground,
    required this.button,
    required this.border,
    required this.icon,
    required this.slider,
    required this.chart,
    required this.toast,
    required this.shimmer,
    required this.toggleSwitch,
    required this.singles,
    required this.shadow,
    required this.actionColors,
    required this.tabBar,
  })  : onPrimary = onPrimary ?? primary,
        onSecondary = onSecondary ?? secondary,
        onTertiary = onTertiary ?? tertiary,
        onError = onError ?? error;

  @override
  List<Object?> get props => [
        brightness,
        primary,
        onPrimary,
        secondary,
        onSecondary,
        tertiary,
        onTertiary,
        error,
        onError,
        material,
        text,
        background,
        button,
        border,
        icon,
        slider,
        chart,
        toast,
        shimmer,
        toggleSwitch,
        foreground,
        singles,
        shadow,
        actionColors,
        tabBar,
      ];

  factory ExThemeColors.light() {
    return ExThemeColors(
      brightness: Brightness.light,
      primary: ExColors.purple8966CC,
      onPrimary: ExColors.white,
      secondary: ExColors.cyan00B4BA,
      onSecondary: ExColors.white,
      tertiary: ExColors.cyan00B4BA,
      onTertiary: ExColors.white,
      error: ExColors.redFF264D,
      onError: ExColors.white,
      material: ExThemeMaterialColors.light(),
      text: ExThemeTextColors.light(),
      background: ExThemeBackgroundColors.light(),
      border: ExThemeBorderColors.light(),
      icon: ExThemeIconColors.light(),
      slider: ExThemeSliderColors.light(),
      chart: ExThemeChartColors.light(),
      toast: ExThemeToastColors.light(),
      shimmer: ExThemeShimmerColors.light(),
      button: ExThemeButtonColors.light(),
      toggleSwitch: ExThemeToggleSwitchColors.light(),
      foreground: ExThemeForegroundColors.light(),
      singles: ExThemeSinglesColors.light(),
      shadow: ExThemeShadowColors.light(),
      tabBar: ExThemeTabBarColors.light(),
      actionColors: ExThemeActionColors.light(),
    );
  }

  factory ExThemeColors.dark() {
    return ExThemeColors(
      brightness: Brightness.dark,
      primary: ExColors.purpleA073F4,
      onPrimary: ExColors.white,
      secondary: ExColors.cyan00B4BA,
      onSecondary: ExColors.white,
      tertiary: ExColors.cyan00B4BA,
      onTertiary: ExColors.white,
      error: ExColors.redFF264D,
      onError: ExColors.white,
      material: ExThemeMaterialColors.dark(),
      text: ExThemeTextColors.dark(),
      background: ExThemeBackgroundColors.dark(),
      border: ExThemeBorderColors.dark(),
      icon: ExThemeIconColors.dark(),
      slider: ExThemeSliderColors.dark(),
      chart: ExThemeChartColors.dark(),
      toast: ExThemeToastColors.dark(),
      shimmer: ExThemeShimmerColors.dark(),
      button: ExThemeButtonColors.dark(),
      toggleSwitch: ExThemeToggleSwitchColors.dark(),
      foreground: ExThemeForegroundColors.dark(),
      singles: ExThemeSinglesColors.dark(),
      shadow: ExThemeShadowColors.dark(),
      tabBar: ExThemeTabBarColors.dark(),
      actionColors: ExThemeActionColors.dark(),
    );
  }

  ColorScheme createColorScheme({required ThemeData themeData}) {
    return themeData.colorScheme.copyWith(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      tertiary: tertiary,
      onTertiary: onTertiary,
      error: error,
      onError: onError,
      background: background.main,
    );
  }
}

class ExThemeMaterialColors extends BaseData {
  final MaterialColor neutral;
  final MaterialColor primary;
  final MaterialColor gray;
  final MaterialColor purple;
  final MaterialColor teal;
  final MaterialColor success;
  final MaterialColor error;
  final MaterialColor warning;
  final MaterialColor info;

  // NEW
  final MaterialColor dynamite;
  final MaterialColor malinka;

  ExThemeMaterialColors({
    required this.neutral,
    required this.primary,
    required this.gray,
    required this.purple,
    required this.teal,
    required this.success,
    required this.error,
    required this.warning,
    required this.info,
    required this.dynamite,
    required this.malinka,
  });

  factory ExThemeMaterialColors.light() {
    return ExThemeMaterialColors(
      neutral: ExColors.neutral,
      primary: ExColors.primary,
      gray: ExColors.gray,
      purple: ExColors.purple,
      teal: ExColors.teal,
      success: ExColors.success,
      error: ExColors.error,
      warning: ExColors.warning,
      info: ExColors.info,
      dynamite: ExColors.dynamite,
      malinka: ExColors.malinka,
    );
  }

  factory ExThemeMaterialColors.dark() {
    return ExThemeMaterialColors(
      neutral: ExColors.neutralDark,
      primary: ExColors.primaryDark,
      gray: ExColors.grayDark,
      purple: ExColors.purpleDark,
      teal: ExColors.tealDark,
      success: ExColors.successDark,
      error: ExColors.errorDark,
      warning: ExColors.warningDark,
      info: ExColors.infoDark,
      // TODO make dark version
      dynamite: ExColors.dynamite,
      malinka: ExColors.malinka,
    );
  }

  @override
  List<Object?> get props => [
        neutral,
        primary,
        gray,
        purple,
        teal,
        success,
        error,
        warning,
        info,
        dynamite,
        malinka,
      ];
}

class ExThemeTextColors extends BaseData {
  final Color main;
  final Color secondary;
  final Color hint;
  final Color disabled;
  final Color highlighted;
  final Color onButton;
  final Color onButtonSemiPrimary;
  final Color onButtonSecondary;
  final Color onButtonSemiSecondary;
  final Color onButtonTertiary;
  final Color onOutlineButton;
  final Color onSplashedButton;
  final Color onToast;
  final Color onChart;
  final Color onSwitch;
  final Color onPinNumber;
  final Color onFilterText;
  final Color onPasswordValidation;
  final Color onTerm;
  final Color onOtpVerify;
  final Color textGrey;
  final Color onLabelHeader;
  final Color onSubtitle;
  final Color onKycPlaceholder;
  final Color onButtonDisabled;
  final Color onDeletePriceAlert;
  final Color textPhoneNumber;
  final Color textBlack12192;
  final Color disabledNetwork;
  final Color onWalletEye;
  final Color onMissionButton;
  final Color bold;
  final Color additional;
  final Color primary;
  final Color colorBG;
  final Color error;
  final Color warning;
  final Color success;
  final Color info;

  ExThemeTextColors({
    required this.main,
    required this.secondary,
    required this.hint,
    required this.disabled,
    required this.highlighted,
    required this.onButton,
    required this.onButtonSemiPrimary,
    required this.onButtonSecondary,
    required this.onButtonSemiSecondary,
    required this.onButtonTertiary,
    required this.onOutlineButton,
    required this.onSplashedButton,
    required this.onToast,
    required this.onChart,
    required this.onSwitch,
    required this.onPinNumber,
    required this.onFilterText,
    required this.onPasswordValidation,
    required this.onTerm,
    required this.onOtpVerify,
    required this.textGrey,
    required this.onLabelHeader,
    required this.onSubtitle,
    required this.textPhoneNumber,
    required this.textBlack12192,
    required this.onKycPlaceholder,
    required this.onButtonDisabled,
    required this.onDeletePriceAlert,
    required this.disabledNetwork,
    required this.onWalletEye,
    required this.onMissionButton,
    required this.primary,
    required this.error,
    required this.info,
    required this.success,
    required this.additional,
    required this.bold,
    required this.colorBG,
    required this.warning,
  });

  factory ExThemeTextColors.light() {
    return ExThemeTextColors(
      main: ExThemeMaterialColors.light().gray.shade700,
      secondary: ExThemeMaterialColors.light().purple.shade500,
      hint: ExColors.grey9AA4B2,
      disabled: ExThemeMaterialColors.light().gray.shade500,
      highlighted: ExColors.cyan00B4BA,
      onButton: ExColors.white,
      onButtonDisabled: ExColors.white,
      onButtonSemiPrimary: ExColors.purple8966CC,
      onButtonSecondary: ExColors.white,
      onButtonSemiSecondary: ExColors.cyan00B4BA,
      onButtonTertiary: ExColors.black364152,
      onOutlineButton: ExColors.purple8966CC,
      onSplashedButton: ExColors.white,
      onToast: ExColors.white,
      onChart: ExColors.black364152,
      onSwitch: ExColors.white,
      onPinNumber: ExColors.purple482C7D,
      onFilterText: ExColors.purple6C40BF,
      onPasswordValidation: ExColors.grey697586,
      onTerm: ExColors.purple8966CC,
      onOtpVerify: ExColors.grey697586,
      textGrey: ExColors.greyTextColor,
      onLabelHeader: ExColors.grey697586,
      onSubtitle: ExColors.grey697586,
      onKycPlaceholder: ExColors.grey9AA4B2,
      onDeletePriceAlert: ExColors.grey697586,
      textPhoneNumber: ExColors.phoneNumberBlackColor,
      textBlack12192: ExColors.textBlackColor121926,
      disabledNetwork: ExColors.grey9AA3B2,
      onWalletEye: ExColors.grey697586,
      onMissionButton: ExColors.grey9AA3B2,
      success: ExThemeMaterialColors.light().success.shade500,
      primary: ExThemeMaterialColors.light().teal.shade500,
      error: ExThemeMaterialColors.light().error.shade500,
      info: ExThemeMaterialColors.light().info.shade500,
      additional: ExThemeMaterialColors.light().gray.shade500,
      bold: ExThemeMaterialColors.light().gray.shade900,
      colorBG: ExThemeMaterialColors.light().gray.shade0,
      warning: ExThemeMaterialColors.light().warning.shade500,
    );
  }

  factory ExThemeTextColors.dark() {
    return ExThemeTextColors(
      main: ExThemeMaterialColors.dark().gray.shade700,
      secondary: ExThemeMaterialColors.dark().purple.shade500,
      hint: ExColors.white,
      disabled: ExThemeMaterialColors.dark().gray.shade500,
      highlighted: ExColors.cyan00B4BA,
      onButton: ExColors.white,
      onButtonDisabled: ExColors.grey9AA4B2,
      onButtonSemiPrimary: ExColors.purple8966CC,
      onButtonSecondary: ExColors.white,
      onButtonSemiSecondary: ExColors.cyan00B4BA,
      onButtonTertiary: ExColors.black364152,
      onOutlineButton: ExColors.purple8966CC,
      onSplashedButton: ExColors.white,
      onToast: ExColors.white,
      onChart: ExColors.black364152,
      onSwitch: ExColors.white,
      onPinNumber: ExColors.white,
      onFilterText: ExColors.purpleA073F4,
      onPasswordValidation: ExColors.white,
      onTerm: ExColors.purpleA073F4,
      onOtpVerify: ExColors.white,
      textGrey: ExColors.greyTextColor,
      onLabelHeader: ExColors.white,
      onSubtitle: ExColors.greyB9B8BD,
      textPhoneNumber: ExColors.phoneNumberBlackColor,
      textBlack12192: ExColors.textBlackColor121926,
      onKycPlaceholder: ExColors.purple4F4D66,
      onDeletePriceAlert: ExColors.purpleA073F4,
      disabledNetwork: ExColors.grey9AA3B2,
      onWalletEye: ExColors.grey9AA4B2,
      onMissionButton: ExColors.white,
      success: ExThemeMaterialColors.dark().success.shade500,
      primary: ExThemeMaterialColors.dark().teal.shade500,
      error: ExThemeMaterialColors.dark().error.shade500,
      info: ExThemeMaterialColors.dark().info.shade500,
      additional: ExThemeMaterialColors.dark().gray.shade500,
      bold: ExThemeMaterialColors.dark().gray.shade900,
      colorBG: ExThemeMaterialColors.dark().gray.shade0,
      warning: ExThemeMaterialColors.dark().warning.shade500,
    );
  }

  @override
  List<Object?> get props => [
        main,
        secondary,
        hint,
        disabled,
        highlighted,
        onButton,
        onButtonDisabled,
        onButtonSemiPrimary,
        onButtonSecondary,
        onButtonSemiSecondary,
        onButtonTertiary,
        onOutlineButton,
        onSplashedButton,
        onToast,
        onChart,
        onSwitch,
        onPinNumber,
        onFilterText,
        onPasswordValidation,
        onTerm,
        onOtpVerify,
        textGrey,
        onLabelHeader,
        onSubtitle,
        textPhoneNumber,
        textBlack12192,
        onKycPlaceholder,
        onDeletePriceAlert,
        disabledNetwork,
        onWalletEye,
        onMissionButton,
        success,
        primary,
        error,
        info,
        additional,
        bold,
        colorBG,
        warning,
      ];
}

class ExThemeBackgroundColors extends BaseData {
  final Color main;
  final Color base;
  final Color scaffold;
  final Color container;
  final Color mainContainer;
  final Color bottomsheet;
  final Color dialog;
  final Color dialogChart;
  final Color navbar;
  final Color textfield;
  final Color form;
  final Color chart;
  final Color homeHeader;
  final Color homeContainer;
  final Color kycPlaceholder;
  final Color infoError;
  final Color miniContainer;
  final Color disabled;
  final Color canvas;
  final Color blueContainer;
  final Color gamification;
  final Color icon;
  final Color marketTabIndicator;
  final Color coinChipLabel;
  final Color onSwipeableTile;
  final Color onItemSecurity;
  final Color onMenuWallet;
  final Color iconLightGreen;
  final Color iconLightPurple;
  final Color primary;
  final Color secondary;
  final Color textFieldDisabled;
  final Color onBannerBlue;
  final Color onButtonList;
  final Color dialogLottie;
  final Color detailMissionReferee;
  final Color defaultBg;
  final Color subtle;
  final Color strong;

  ExThemeBackgroundColors({
    required this.main,
    required this.base,
    required this.scaffold,
    required this.container,
    required this.mainContainer,
    required this.bottomsheet,
    required this.dialog,
    required this.dialogChart,
    required this.navbar,
    required this.textfield,
    required this.form,
    required this.chart,
    required this.homeHeader,
    required this.homeContainer,
    required this.kycPlaceholder,
    required this.infoError,
    required this.miniContainer,
    required this.disabled,
    required this.canvas,
    required this.blueContainer,
    required this.gamification,
    required this.icon,
    required this.marketTabIndicator,
    required this.coinChipLabel,
    required this.onSwipeableTile,
    required this.onItemSecurity,
    required this.onMenuWallet,
    required this.iconLightGreen,
    required this.iconLightPurple,
    required this.primary,
    required this.secondary,
    required this.textFieldDisabled,
    required this.onBannerBlue,
    required this.onButtonList,
    required this.dialogLottie,
    required this.detailMissionReferee,
    required this.defaultBg,
    required this.subtle,
    required this.strong,
  });

  factory ExThemeBackgroundColors.light() {
    return ExThemeBackgroundColors(
      main: ExColors.doctorWhite,
      base: ExColors.white,
      scaffold: ExColors.white,
      container: ExColors.greyF1F5F8,
      gamification: ExColors.white,
      mainContainer: ExColors.white,
      bottomsheet: ExColors.white,
      dialog: ExColors.white,
      dialogChart: ExColors.greyF3F0FA,
      navbar: ExColors.white,
      textfield: ExColors.transparent,
      form: ExColors.white,
      chart: ExColors.white,
      homeHeader: ExColors.purple6B53A3,
      homeContainer: ExColors.white,
      kycPlaceholder: ExColors.greyEEF2F6,
      infoError: ExColors.redFEF1F0,
      miniContainer: ExColors.grey3D424D,
      disabled: ExColors.greyCDD5DF,
      canvas: ExColors.transparent,
      blueContainer: ExColors.blueF1FBFE,
      icon: ExColors.greyF3F0FA,
      marketTabIndicator: ExColors.purple[25]!,
      coinChipLabel: ExColors.greyDFF8F9,
      onSwipeableTile: ExColors.white,
      onItemSecurity: ExColors.white,
      onMenuWallet: ExColors.greyDFF8F9,
      iconLightGreen: ExColors.greenECF9F7,
      iconLightPurple: ExColors.purpleF3F0FA,
      primary: ExColors.purple8966CC,
      secondary: ExColors.cyan00B4BA,
      textFieldDisabled: ExColors.greyE3E8EF,
      onBannerBlue: ExColors.blueE1EBFF,
      onButtonList: ExColors.transparent,
      dialogLottie: ExColors.white,
      detailMissionReferee: ExColors.white,
      defaultBg: ExThemeMaterialColors.light().gray.shade0,
      subtle: ExThemeMaterialColors.light().gray.shade25,
      strong: ExThemeMaterialColors.light().gray.shade50,
    );
  }

  factory ExThemeBackgroundColors.dark() {
    return ExThemeBackgroundColors(
      main: ExColors.black161424,
      base: ExColors.black1D1B31,
      scaffold: ExColors.black161424,
      container: ExColors.purple272442,
      gamification: ExColors.purple272442,
      mainContainer: ExColors.purple1D1B31,
      bottomsheet: ExColors.black161424,
      dialog: ExColors.black161424,
      dialogChart: ExColors.greyF3F0FA,
      navbar: ExColors.black161424,
      textfield: ExColors.transparent,
      form: ExColors.black161424,
      chart: ExColors.black161424,
      homeHeader: ExColors.purple6B53A3,
      homeContainer: ExColors.purple272442,
      kycPlaceholder: ExColors.purple1D1B31,
      infoError: ExColors.red550D1A,
      miniContainer: ExColors.cyan00B4BA,
      disabled: ExColors.purple272442,
      canvas: ExColors.transparent,
      blueContainer: ExColors.blue38CAFA.withOpacity(0.2),
      icon: ExColors.purple272442,
      marketTabIndicator: ExColors.purple272442,
      coinChipLabel: ExColors.purple272442,
      onSwipeableTile: ExColors.purple482C7D,
      onItemSecurity: ExColors.black161424,
      onMenuWallet: ExColors.purple272442,
      iconLightGreen: ExColors.purple272442,
      iconLightPurple: ExColors.purple272442,
      primary: ExColors.purple281152,
      secondary: ExColors.cyan0F4E50,
      textFieldDisabled: ExColors.purple272442,
      onBannerBlue: ExColors.blue214597,
      onButtonList: ExColors.purple1D1B31,
      dialogLottie: ExColors.black1D1A2F,
      detailMissionReferee: ExColors.white,
      defaultBg: ExThemeMaterialColors.dark().gray.shade0,
      subtle: ExThemeMaterialColors.dark().gray.shade25,
      strong: ExThemeMaterialColors.dark().gray.shade50,
    );
  }

  @override
  List<Object?> get props => [
        main,
        base,
        scaffold,
        container,
        gamification,
        mainContainer,
        bottomsheet,
        dialog,
        dialogChart,
        navbar,
        textfield,
        form,
        chart,
        homeHeader,
        homeContainer,
        kycPlaceholder,
        infoError,
        miniContainer,
        disabled,
        canvas,
        blueContainer,
        icon,
        marketTabIndicator,
        coinChipLabel,
        onSwipeableTile,
        onItemSecurity,
        onMenuWallet,
        iconLightGreen,
        iconLightPurple,
        primary,
        secondary,
        textFieldDisabled,
        onBannerBlue,
        onButtonList,
        dialogLottie,
        detailMissionReferee,
        defaultBg,
        subtle,
        strong,
      ];
}

class ExThemeForegroundColors extends BaseData {
  final Color teal;
  final Color purple;
  final Color red;
  final Color green;
  final Color yellow;
  final Color blue;

  ExThemeForegroundColors({
    required this.teal,
    required this.purple,
    required this.red,
    required this.green,
    required this.yellow,
    required this.blue,
  });

  factory ExThemeForegroundColors.light() => ExThemeForegroundColors(
        teal: ExThemeMaterialColors.light().teal.shade25,
        purple: ExThemeMaterialColors.light().purple.shade25,
        red: ExThemeMaterialColors.light().error.shade25,
        green: ExThemeMaterialColors.light().success.shade25,
        yellow: ExThemeMaterialColors.light().warning.shade25,
        blue: ExThemeMaterialColors.light().info.shade25,
      );

  factory ExThemeForegroundColors.dark() => ExThemeForegroundColors(
        teal: ExThemeMaterialColors.dark().teal.shade25,
        purple: ExThemeMaterialColors.dark().purple.shade25,
        red: ExThemeMaterialColors.dark().error.shade25,
        green: ExThemeMaterialColors.dark().success.shade25,
        yellow: ExThemeMaterialColors.dark().warning.shade25,
        blue: ExThemeMaterialColors.dark().info.shade25,
      );

  @override
  List<Object?> get props => [teal, purple, red, green, yellow, blue];
}

class ExThemeButtonColors extends BaseData {
  final Color main;
  final Color secondary;
  final Color tertiary;
  final Color outline;
  final Color splash;
  final Color splashSecondary;
  final Color splashTertiary;
  final Color disabled;
  final Color semiPrimary;
  final Color semiSecondary;
  final Color chip;
  final Color unchip;

  ExThemeButtonColors({
    required this.main,
    required this.secondary,
    required this.tertiary,
    required this.outline,
    required this.splash,
    required this.splashSecondary,
    required this.splashTertiary,
    required this.disabled,
    required this.semiPrimary,
    required this.semiSecondary,
    required this.chip,
    required this.unchip,
  });

  factory ExThemeButtonColors.light() {
    return ExThemeButtonColors(
      main: ExColors.purple6C40BF,
      secondary: ExColors.cyan00B4BA,
      tertiary: ExColors.white,
      outline: ExColors.purple6C40BF,
      splash: ExColors.purple6C40BF.withOpacity(0.5),
      splashSecondary: ExColors.cyan00B4BA.withOpacity(0.5),
      splashTertiary: ExColors.cyan00B4BA.withOpacity(0.5),
      disabled: ExColors.greyE3E8EF,
      semiPrimary: ExColors.greyF3F0FA,
      semiSecondary: ExColors.greyEAFAF8,
      chip: ExColors.greyF3F0FA,
      unchip: ExColors.gray.shade50,
    );
  }

  factory ExThemeButtonColors.dark() {
    return ExThemeButtonColors(
      main: ExColors.purple6C40BF,
      secondary: ExColors.cyan00B4BA,
      tertiary: ExColors.white,
      outline: ExColors.purple6C40BF,
      splash: ExColors.purple6C40BF.withOpacity(0.5),
      splashSecondary: ExColors.cyan00B4BA.withOpacity(0.5),
      splashTertiary: ExColors.white.withOpacity(0.5),
      disabled: ExColors.greyE3E8EF,
      semiPrimary: ExColors.greyF3F0FA,
      semiSecondary: ExColors.purple272442,
      chip: ExColors.purple272442,
      unchip: ExColors.purple1D1B31,
    );
  }

  @override
  List<Object?> get props => [
        main,
        secondary,
        tertiary,
        outline,
        splash,
        splashSecondary,
        splashTertiary,
        disabled,
        semiPrimary,
        semiSecondary,
        chip,
        unchip,
      ];
}

class ExThemeBorderColors extends BaseData {
  final Color main;
  final Color darkTransparent;
  final Color container;
  final Color mainContainer;
  final Color focused;
  final Color disabled;
  final Color error;
  final Color infoError;
  final Color internalTransferBorder;
  final Color noteBorder;
  final Color skyBorder;
  final Color skyBckground;
  final Color blueNoteBorder;
  final Color tabActiveBorder;
  final Color onSearch;
  final Color onKycPlaceholder;
  final Color deleteBorderColor;
  final Color deleteSkyBorderColor;
  final Color deleteSkyBackgroundColor;
  final Color onBannerBlue;
  final Color soft;
  final Color focus;
  final Color success;
  final Color subtle;

  ExThemeBorderColors({
    required this.main,
    required this.darkTransparent,
    required this.container,
    required this.mainContainer,
    required this.focused,
    required this.disabled,
    required this.error,
    required this.infoError,
    required this.internalTransferBorder,
    required this.noteBorder,
    required this.skyBorder,
    required this.skyBckground,
    required this.blueNoteBorder,
    required this.tabActiveBorder,
    required this.onSearch,
    required this.onKycPlaceholder,
    required this.deleteBorderColor,
    required this.deleteSkyBorderColor,
    required this.deleteSkyBackgroundColor,
    required this.onBannerBlue,
    required this.soft,
    required this.focus,
    required this.success,
    required this.subtle,
  });

  factory ExThemeBorderColors.light() {
    return ExThemeBorderColors(
      main: ExThemeMaterialColors.light().gray.shade100,
      darkTransparent: ExColors.greyEEF2F6,
      container: ExColors.greyD6F7F7,
      mainContainer: ExColors.greyE3E8EF,
      focused: ExColors.cyan00B4BA,
      disabled: ExColors.greyE3E8EF,
      error: ExThemeMaterialColors.light().error.shade400,
      infoError: ExColors.redFCCBCA,
      internalTransferBorder: ExColors.greyEEF2F6,
      noteBorder: ExColors.redFF4A6B,
      skyBorder: ExColors.skyBorderColor,
      skyBckground: ExColors.skyBackgroundColor,
      blueNoteBorder: ExColors.blueA0E2F8,
      tabActiveBorder: ExColors.tabActiveBorder,
      onSearch: ExColors.greyE3E8EF,
      onKycPlaceholder: ExColors.greyCCD5DF,
      deleteBorderColor: ExColors.deleteAccountBorderColor,
      deleteSkyBorderColor: ExColors.deleteSkyBorderColor,
      deleteSkyBackgroundColor: ExColors.deleteSkyBackgroundColor,
      onBannerBlue: ExColors.blue3267E3,
      soft: ExThemeMaterialColors.light().gray.shade50,
      focus: ExThemeMaterialColors.light().teal.shade400,
      success: ExThemeMaterialColors.light().teal.shade400,
      subtle: ExColors.teal.shade50,
    );
  }

  factory ExThemeBorderColors.dark() {
    return ExThemeBorderColors(
      main: ExThemeMaterialColors.dark().gray.shade100,
      darkTransparent: ExColors.transparent,
      container: ExColors.purple272442,
      mainContainer: ExColors.purple1D1B31,
      focused: ExColors.cyan00B4BA,
      disabled: ExColors.purple312D53,
      error: ExThemeMaterialColors.dark().error.shade400,
      infoError: ExColors.redFCCBCA,
      internalTransferBorder: ExColors.purple312D53,
      noteBorder: ExColors.redFF4A6B,
      skyBorder: ExColors.skyBorderColor,
      skyBckground: ExColors.skyBackgroundColor,
      blueNoteBorder: ExColors.blue38CAFA,
      tabActiveBorder: ExColors.tabActiveBorder,
      onSearch: ExColors.grey454350,
      onKycPlaceholder: ExColors.purple4F4D66,
      deleteBorderColor: ExColors.deleteAccountBorderColor,
      deleteSkyBorderColor: ExColors.infoDark.shade50,
      deleteSkyBackgroundColor: ExColors.infoDark.shade25,
      onBannerBlue: ExColors.blue193472,
      soft: ExThemeMaterialColors.dark().gray.shade50,
      focus: ExThemeMaterialColors.dark().teal.shade400,
      success: ExThemeMaterialColors.dark().teal.shade400,
      subtle: ExColors.tealDark.shade200,
    );
  }

  @override
  List<Object?> get props => [
        main,
        darkTransparent,
        container,
        mainContainer,
        focused,
        disabled,
        error,
        infoError,
        internalTransferBorder,
        noteBorder,
        skyBorder,
        skyBckground,
        blueNoteBorder,
        tabActiveBorder,
        onSearch,
        onKycPlaceholder,
        deleteBorderColor,
        deleteSkyBorderColor,
        deleteSkyBackgroundColor,
        onBannerBlue,
        soft,
        focus,
        success,
        subtle
      ];
}

class ExThemeIconColors extends BaseData {
  final Color main;
  final Color afterText;
  final Color selected;
  final Color selectedFavorite;
  final Color unselected;
  final Color unselectedNavBar;
  final Color primary;
  final Color onSwitchTradeAdv;
  final Color onSwitchTradeAdv1;
  final Color onSwitchLite;
  final Color onSwitchLite1;
  final Color secondary;
  final Color hideShow;
  final Color disabled;
  final Color contrast;
  final Color colorBG;
  final Color error;
  final Color warning;
  final Color success;
  final Color info;

  ExThemeIconColors({
    required this.main,
    required this.afterText,
    required this.selected,
    required this.selectedFavorite,
    required this.unselected,
    required this.unselectedNavBar,
    required this.primary,
    required this.onSwitchTradeAdv,
    required this.onSwitchTradeAdv1,
    required this.onSwitchLite,
    required this.onSwitchLite1,
    required this.secondary,
    required this.hideShow,
    required this.disabled,
    required this.contrast,
    required this.colorBG,
    required this.error,
    required this.warning,
    required this.success,
    required this.info,
  });

  factory ExThemeIconColors.light() {
    return ExThemeIconColors(
      main: ExColors.grey9AA4B2,
      afterText: ExColors.grey9AA4B2,
      selected: ExThemeMaterialColors.light().dynamite.shade500,
      selectedFavorite: ExColors.redF68784,
      unselected: ExColors.grey9AA4B2,
      unselectedNavBar: ExThemeMaterialColors.light().gray.shade600,
      primary: ExThemeMaterialColors.light().teal.shade500,
      onSwitchTradeAdv: ExColors.purple8966CC,
      onSwitchTradeAdv1: ExColors.greyE2D9F2,
      onSwitchLite: ExColors.cyan00B4BA,
      onSwitchLite1: ExColors.greyD6F7F7,
      secondary: ExThemeMaterialColors.light().purple.shade400,
      hideShow: ExColors.grey364152,
      disabled: ExThemeMaterialColors.light().gray.shade400,
      contrast: ExThemeMaterialColors.light().gray.shade600,
      colorBG: ExThemeMaterialColors.light().gray.shade0,
      error: ExThemeMaterialColors.light().error.shade500,
      warning: ExThemeMaterialColors.light().warning.shade500,
      success: ExThemeMaterialColors.light().success.shade500,
      info: ExThemeMaterialColors.light().info.shade500,
    );
  }

  factory ExThemeIconColors.dark() {
    return ExThemeIconColors(
      main: ExColors.grey9AA4B2,
      afterText: ExColors.white,
      selected: ExThemeMaterialColors.dark().dynamite.shade500,
      selectedFavorite: ExColors.redF68784,
      unselected: ExColors.grey9AA4B2,
      unselectedNavBar: ExThemeMaterialColors.dark().gray.shade600,
      primary: ExThemeMaterialColors.dark().teal.shade500,
      onSwitchTradeAdv: ExColors.purple8966CC,
      onSwitchTradeAdv1: ExColors.greyE2D9F2,
      onSwitchLite: ExColors.cyan00B4BA,
      onSwitchLite1: ExColors.greyD6F7F7,
      secondary: ExThemeMaterialColors.dark().purple.shade500,
      hideShow: ExColors.grey9AA4B2,
      disabled: ExThemeMaterialColors.dark().gray.shade400,
      contrast: ExThemeMaterialColors.dark().gray.shade600,
      colorBG: ExThemeMaterialColors.dark().gray.shade0,
      error: ExThemeMaterialColors.dark().error.shade500,
      warning: ExThemeMaterialColors.dark().warning.shade500,
      success: ExThemeMaterialColors.dark().success.shade500,
      info: ExThemeMaterialColors.dark().info.shade500,
    );
  }

  @override
  List<Object?> get props => [
        main,
        afterText,
        selected,
        selectedFavorite,
        unselected,
        unselectedNavBar,
        primary,
        onSwitchTradeAdv,
        onSwitchTradeAdv1,
        onSwitchLite,
        onSwitchLite1,
        secondary,
        hideShow,
        disabled,
        contrast,
        colorBG,
        error,
        warning,
        success,
        info,
      ];
}

class ExThemeSliderColors extends BaseData {
  final Color thumb;
  final Color activeTrack;
  final Color inactiveTrack;
  final Color overlayColor;
  final Color nextDeactiveTrack;

  ExThemeSliderColors({
    required this.thumb,
    required this.activeTrack,
    required this.inactiveTrack,
    required this.overlayColor,
    required this.nextDeactiveTrack,
  });

  factory ExThemeSliderColors.light() {
    return ExThemeSliderColors(
      thumb: ExColors.cyan00B4BA,
      activeTrack: ExColors.cyan00B4BA,
      inactiveTrack: ExColors.greyD6F7F7,
      overlayColor: ExColors.cyan00B4BA.withOpacity(0.5),
      nextDeactiveTrack: ExColors.greyE3E8EF,
    );
  }

  factory ExThemeSliderColors.dark() {
    return ExThemeSliderColors(
      thumb: ExColors.cyan00B4BA,
      activeTrack: ExColors.cyan00B4BA,
      inactiveTrack: ExColors.purple625AA5,
      overlayColor: ExColors.cyan00B4BA.withOpacity(0.5),
      nextDeactiveTrack: ExColors.purple312D52,
    );
  }

  @override
  List<Object?> get props => [
        thumb,
        activeTrack,
        inactiveTrack,
        overlayColor,
        nextDeactiveTrack,
      ];
}

class ExThemeRadioColors extends BaseData {
  final Color active;

  ExThemeRadioColors({
    required this.active,
  });

  factory ExThemeRadioColors.light() {
    return ExThemeRadioColors(
      active: ExColors.cyan00B4BA,
    );
  }

  factory ExThemeRadioColors.dark() {
    return ExThemeRadioColors(
      active: ExColors.cyan00B4BA,
    );
  }

  @override
  List<Object?> get props => [
        active,
      ];
}

class ExThemeChartColors extends BaseData {
  final Color up;
  final Color down;
  final Color grid;
  final Color miniWindowBg;
  final Color textWindow;

  ExThemeChartColors({
    required this.up,
    required this.down,
    required this.grid,
    required this.miniWindowBg,
    required this.textWindow,
  });

  factory ExThemeChartColors.light() {
    return ExThemeChartColors(
      up: ExColors.success.shade400,
      down: ExColors.error.shade400,
      grid: ExColors.greyEEF2F6,
      miniWindowBg: ExColors.gray.shade700,
      textWindow: ExColors.white,
    );
  }

  factory ExThemeChartColors.dark() {
    return ExThemeChartColors(
      up: ExColors.success.shade400,
      down: ExColors.error.shade400,
      grid: ExColors.greyEEF2F6,
      miniWindowBg: ExColors.greyF3F0FA,
      textWindow: ExColors.black364152,
    );
  }

  @override
  List<Object?> get props => [up, down, grid, miniWindowBg, textWindow];
}

class ExThemePercentageColors extends BaseData {
  final Color up;
  final Color down;
  final Color bgUp;
  final Color bgDown;

  ExThemePercentageColors._({
    required this.up,
    required this.down,
    required this.bgUp,
    required this.bgDown,
  });

  factory ExThemePercentageColors.light() => ExThemePercentageColors._(
        up: ExColors.cyan26C6B3,
        down: ExColors.redF68784,
        bgUp: ExColors.greyEAFAF8,
        bgDown: ExColors.redFCCBCA,
      );

  factory ExThemePercentageColors.dark() => ExThemePercentageColors._(
        up: ExColors.cyan26C6B3,
        down: ExColors.redFF6661,
        bgUp: ExColors.cyan26C6B3.withOpacity(0.2),
        bgDown: ExColors.redFF6661.withOpacity(0.2),
      );

  @override
  List<Object?> get props => [up, down, bgUp, bgDown];
}

class ExThemeToastColors extends BaseData {
  final Color success;
  final Color error;
  final Color info;

  ExThemeToastColors({
    required this.success,
    required this.error,
    required this.info,
  });

  factory ExThemeToastColors.light() {
    return ExThemeToastColors(
      success: ExColors.green1DBD53,
      error: ExColors.redF68784,
      info: ExColors.black364152,
    );
  }

  factory ExThemeToastColors.dark() {
    return ExThemeToastColors(
      success: ExColors.green1DBD53,
      error: ExColors.redF68784,
      info: ExColors.cyan00B4BA,
    );
  }

  @override
  List<Object?> get props => [
        success,
        error,
        info,
      ];
}

class ExThemeShimmerColors extends BaseData {
  final Color shimmer;
  final Color shimmerHighlight;

  ExThemeShimmerColors._({
    required this.shimmer,
    required this.shimmerHighlight,
  });

  factory ExThemeShimmerColors.light() => ExThemeShimmerColors._(
        shimmer: ExColors.shimmer,
        shimmerHighlight: ExColors.shimmerHighlight,
      );

  factory ExThemeShimmerColors.dark() => ExThemeShimmerColors._(
        shimmer: ExColors.shimmer,
        shimmerHighlight: ExColors.shimmerHighlight,
      );

  @override
  List<Object?> get props => [shimmer, shimmerHighlight];
}

class ExThemeToggleSwitchColors extends BaseData {
  final Color onColor;
  final Color offColor;

  ExThemeToggleSwitchColors({
    required this.onColor,
    required this.offColor,
  });

  factory ExThemeToggleSwitchColors.light() {
    return ExThemeToggleSwitchColors(
      onColor: ExColors.purple.shade400,
      offColor: ExColors.greyE3E8EF,
    );
  }

  factory ExThemeToggleSwitchColors.dark() {
    return ExThemeToggleSwitchColors(
      onColor: ExColors.purple.shade400,
      offColor: ExColors.purple312D53,
    );
  }

  @override
  List<Object?> get props => [
        onColor,
        offColor,
      ];
}

class ExThemeDotPinColors extends BaseData {
  final Color borderColor;
  final Color fillColor;

  ExThemeDotPinColors({
    required this.borderColor,
    required this.fillColor,
  });

  factory ExThemeDotPinColors.light() {
    return ExThemeDotPinColors(
      borderColor: ExColors.greyCCD5DF,
      fillColor: ExColors.cyan22BEC3,
    );
  }

  factory ExThemeDotPinColors.dark() {
    return ExThemeDotPinColors(
      borderColor: ExColors.purple4F4D66,
      fillColor: ExColors.cyan22BEC3,
    );
  }

  @override
  List<Object?> get props => [
        borderColor,
        fillColor,
      ];
}

class ExThemeStatusColors extends BaseData {
  final Color correct;
  final Color incorrect;
  final Color transactionStatus;

  ExThemeStatusColors({
    required this.correct,
    required this.incorrect,
    required this.transactionStatus,
  });

  factory ExThemeStatusColors.light() {
    return ExThemeStatusColors(
      correct: ExColors.green1DBD53,
      incorrect: ExColors.redF68784,
      transactionStatus: ExColors.greyEAFAF8,
    );
  }

  factory ExThemeStatusColors.dark() {
    return ExThemeStatusColors(
      correct: ExColors.green1DBD53,
      incorrect: ExColors.redF68784,
      transactionStatus: ExColors.greyEAFAF8,
    );
  }

  @override
  List<Object?> get props => [
        correct,
        incorrect,
        transactionStatus,
      ];
}

class ExThemeTabBarColors extends BaseData {
  final Color labelColor;
  final Color unselectedLabelColor;
  final Color indicatorBackgroundColor;

  ExThemeTabBarColors._({
    required this.labelColor,
    required this.unselectedLabelColor,
    required this.indicatorBackgroundColor,
  });

  factory ExThemeTabBarColors.light() => ExThemeTabBarColors._(
        labelColor: ExColors.cyan00B4BA,
        unselectedLabelColor: ExColors.grey697586,
        indicatorBackgroundColor: ExThemeForegroundColors.light().teal,
      );

  factory ExThemeTabBarColors.dark() => ExThemeTabBarColors._(
        labelColor: ExColors.cyan00B4BA,
        unselectedLabelColor: ExColors.white,
        indicatorBackgroundColor: ExThemeForegroundColors.dark().teal,
      );

  @override
  List<Object?> get props => [
        labelColor,
        unselectedLabelColor,
        indicatorBackgroundColor,
      ];
}

class ExThemeWatchlistColors extends BaseData {
  final Color up;
  final Color down;

  ExThemeWatchlistColors._({required this.up, required this.down});

  factory ExThemeWatchlistColors.light() => ExThemeWatchlistColors._(
        up: ExColors.greenD9F2EF,
        down: ExColors.redFCCBCA,
      );

  factory ExThemeWatchlistColors.dark() => ExThemeWatchlistColors._(
        up: ExColors.cyan00969B,
        down: ExColors.redFF264D,
      );

  @override
  List<Object?> get props => [up, down];
}

class ExThemeDepositStatusColors extends BaseData {
  final Color success;
  final Color failed;
  final Color inProcess;
  final Color bgColorSuccess;
  final Color bgColorFailed;
  final Color bgColorInProcess;

  ExThemeDepositStatusColors._({
    required this.success,
    required this.failed,
    required this.inProcess,
    required this.bgColorSuccess,
    required this.bgColorFailed,
    required this.bgColorInProcess,
  });

  factory ExThemeDepositStatusColors.light() {
    return ExThemeDepositStatusColors._(
      success: ExColors.teal.shade500,
      failed: ExColors.gray.shade400,
      inProcess: ExColors.warning.shade400,
      bgColorSuccess: ExColors.greyEAFAF8,
      bgColorFailed: ExColors.greyE3E8EF,
      bgColorInProcess: ExColors.warning.shade50,
    );
  }

  factory ExThemeDepositStatusColors.dark() {
    return ExThemeDepositStatusColors._(
      success: ExColors.teal.shade500,
      failed: ExColors.gray.shade400,
      inProcess: ExColors.warning.shade400,
      bgColorSuccess: ExColors.greyEAFAF8,
      bgColorFailed: ExColors.greyE3E8EF,
      bgColorInProcess: ExColors.warning.shade50,
    );
  }

  @override
  List<Object?> get props => [
        success,
        failed,
        inProcess,
        bgColorSuccess,
        bgColorFailed,
        bgColorInProcess,
      ];
}

class ExThemeShadowColors extends BaseData {
  final Color main;
  final Color primary;
  final Color secondary;
  final Color tradeBar;

  ExThemeShadowColors._({
    required this.main,
    required this.primary,
    required this.secondary,
    required this.tradeBar,
  });

  factory ExThemeShadowColors.light() {
    return ExThemeShadowColors._(
      main: ExColors.greyBCCCDF.withOpacity(0.2),
      primary: ExColors.purple482C7D,
      secondary: ExColors.cyan00B4BA,
      tradeBar: Colors.grey.withOpacity(0.2),
    );
  }

  factory ExThemeShadowColors.dark() {
    return ExThemeShadowColors._(
      main: Colors.transparent,
      primary: ExColors.purple482C7D,
      secondary: ExColors.cyan00B4BA,
      tradeBar: ExColors.transparent,
    );
  }

  @override
  List<Object?> get props => [
        main,
        primary,
        secondary,
        tradeBar,
      ];
}

class ExThemeSinglesColors extends BaseData {
  /// Colors use to paint the radio active component.
  final Color radio;

  /// A color use to paint the divider component.
  final Color divider;

  /// A color use to paint the drag pointer like on bottomsheet components.
  final Color dragPointer;

  /// A color use to paint the coin's tail.
  final Color coinTail;

  /// A color use to paint the line (not divider).
  final Color line;

  /// A color use to paint dot (circle container use in page view).
  final Color dot;
  final Color disableStartingGrey;
  final Color disableEndingGrey;
  final Color stepperStartingPurple;
  final Color stepperEndingPurple;
  final Color backgroundPollingStrike;
  final Color textPollingStrike;

  /// A color use to paint Rp background color on transaction detail
  final Color bgTransDetailRp;

  final Color chartWatermark;

  ExThemeSinglesColors._(
      {required this.radio,
      required this.divider,
      required this.dragPointer,
      required this.coinTail,
      required this.line,
      required this.dot,
      required this.bgTransDetailRp,
      required this.chartWatermark,
      required this.disableStartingGrey,
      required this.disableEndingGrey,
      required this.stepperStartingPurple,
      required this.stepperEndingPurple,
      required this.backgroundPollingStrike,
      required this.textPollingStrike});

  factory ExThemeSinglesColors.light() {
    return ExThemeSinglesColors._(
      radio: ExColors.cyan00B4BA,
      divider: ExColors.greyE3E8EF,
      dragPointer: ExColors.greyEDEDED,
      coinTail: ExColors.greyDFF8F9,
      line: ExColors.greyCDD5DF,
      dot: ExColors.greyCDD5DF,
      bgTransDetailRp: ExColors.green009355,
      chartWatermark: ExColors.black241F20,
      disableStartingGrey: ExColors.disableStartingGrey,
      disableEndingGrey: ExColors.disableEndingGrey,
      stepperStartingPurple: ExColors.stepperStartingPurple,
      stepperEndingPurple: ExColors.stepperEndingPurple,
      backgroundPollingStrike: ExColors.stepperStartingPurple,
      textPollingStrike: Colors.white,
    );
  }

  factory ExThemeSinglesColors.dark() {
    return ExThemeSinglesColors._(
        radio: ExColors.cyan00B4BA,
        divider: ExColors.black282732,
        dragPointer: ExColors.purple312D53,
        coinTail: ExColors.purple272442,
        line: ExColors.purple4F4D66,
        dot: ExColors.purple4F4D66,
        bgTransDetailRp: ExColors.green009355,
        chartWatermark: ExColors.white,
        disableStartingGrey: ExColors.disableStartingGreyDark,
        disableEndingGrey: ExColors.disableEndingGreyDark,
        stepperStartingPurple: ExColors.stepperStartingPurple,
        stepperEndingPurple: ExColors.stepperEndingPurple,
        backgroundPollingStrike: ExColors.primary,
        textPollingStrike: ExColors.stepperStartingPurple);
  }

  @override
  List<Object?> get props => [
        radio,
        divider,
        dragPointer,
        coinTail,
        line,
        dot,
        bgTransDetailRp,
        chartWatermark,
        disableStartingGrey,
        disableEndingGrey,
        stepperStartingPurple,
        stepperEndingPurple,
        backgroundPollingStrike,
        textPollingStrike,
      ];
}

class ExThemeTransactionHistoryStatusColors extends BaseData {
  final Color success;
  final Color failed;
  final Color pending;

  ExThemeTransactionHistoryStatusColors({
    required this.success,
    required this.failed,
    required this.pending,
  });

  factory ExThemeTransactionHistoryStatusColors.light() =>
      ExThemeTransactionHistoryStatusColors(
        success: ExColors.cyan00B4BA,
        pending: ExColors.yellowFFA50A,
        failed: ExColors.grey697586,
      );

  factory ExThemeTransactionHistoryStatusColors.dark() =>
      ExThemeTransactionHistoryStatusColors(
        success: ExColors.cyan00B4BA,
        pending: ExColors.yellowFFA50A,
        failed: ExColors.grey697586,
      );

  @override
  List<Object?> get props => [
        success,
        failed,
        pending,
      ];
}

class ExThemeCopyField extends BaseData {
  final Color enable;
  final Color disable;

  ExThemeCopyField._({
    required this.enable,
    required this.disable,
  });

  factory ExThemeCopyField.light() {
    return ExThemeCopyField._(
      enable: ExColors.greyF1F5F8,
      disable: ExColors.grey9AA4B2,
    );
  }

  factory ExThemeCopyField.dark() {
    return ExThemeCopyField._(
      enable: ExColors.purple272442.withOpacity(0.4),
      disable: ExColors.purple272442,
    );
  }

  @override
  List<Object?> get props => [enable, disable];
}

class ExThemeAddressInfoBg extends BaseData {
  final Color info;
  final Color warning;
  final Color danger;

  ExThemeAddressInfoBg._({
    required this.info,
    required this.warning,
    required this.danger,
  });

  factory ExThemeAddressInfoBg.dark() {
    return ExThemeAddressInfoBg._(
      info: ExColors.purple1D1B31,
      warning: ExColors.yellowDBA005,
      danger: ExColors.redF68784,
    );
  }

  factory ExThemeAddressInfoBg.light() {
    return ExThemeAddressInfoBg._(
      info: ExColors.purpleF3F0F9,
      warning: ExColors.yellowFFF7CD,
      danger: ExColors.redF7DCDB,
    );
  }

  @override
  List<Object?> get props => [
        info,
        warning,
        danger,
      ];
}

class ExThemeAddressInfoBorder extends BaseData {
  final Color info;
  final Color warning;
  final Color danger;

  ExThemeAddressInfoBorder._({
    required this.info,
    required this.warning,
    required this.danger,
  });

  factory ExThemeAddressInfoBorder.dark() {
    return ExThemeAddressInfoBorder._(
      info: ExColors.purple,
      warning: ExColors.yellowFFF7CD,
      danger: ExColors.redFF7673,
    );
  }

  factory ExThemeAddressInfoBorder.light() {
    return ExThemeAddressInfoBorder._(
      info: ExColors.purple,
      warning: ExColors.yellowFFF7CD,
      danger: ExColors.redFF7673,
    );
  }

  @override
  List<Object?> get props => [
        info,
        warning,
        danger,
      ];
}

class ExThemeAddressInfoText extends BaseData {
  final Color info;
  final Color warning;
  final Color danger;

  ExThemeAddressInfoText._({
    required this.info,
    required this.warning,
    required this.danger,
  });

  factory ExThemeAddressInfoText.dark() {
    return ExThemeAddressInfoText._(
      info: ExColors.purple,
      warning: ExColors.yellowFFF7CD,
      danger: ExColors.redFF7673,
    );
  }

  factory ExThemeAddressInfoText.light() {
    return ExThemeAddressInfoText._(
      info: ExColors.black364152,
      warning: ExColors.yellowB78103,
      danger: ExColors.redFF4642,
    );
  }

  @override
  List<Object?> get props => [
        info,
        warning,
        danger,
      ];
}

class ExThemeAnnouncementBannerBg extends BaseData {
  final Color info;
  final Color warning;
  final Color danger;

  ExThemeAnnouncementBannerBg._({
    required this.info,
    required this.warning,
    required this.danger,
  });

  factory ExThemeAnnouncementBannerBg.dark() {
    return ExThemeAnnouncementBannerBg._(
      info: ExColors.purple1D1B31,
      warning: ExColors.yellowFFF8E7,
      danger: ExColors.redF68784,
    );
  }

  factory ExThemeAnnouncementBannerBg.light() {
    return ExThemeAnnouncementBannerBg._(
      info: ExColors.purpleF3F0F9,
      warning: ExColors.yellowFFF8E7,
      danger: ExColors.redF7DCDB,
    );
  }

  @override
  List<Object?> get props => [
        info,
        warning,
        danger,
      ];
}

class ExThemeAnnouncementBannerBorder extends BaseData {
  final Color info;
  final Color warning;
  final Color danger;

  ExThemeAnnouncementBannerBorder._({
    required this.info,
    required this.warning,
    required this.danger,
  });

  factory ExThemeAnnouncementBannerBorder.dark() {
    return ExThemeAnnouncementBannerBorder._(
      info: ExColors.purple,
      warning: ExColors.yellowCA960E,
      danger: ExColors.redFF7673,
    );
  }

  factory ExThemeAnnouncementBannerBorder.light() {
    return ExThemeAnnouncementBannerBorder._(
      info: ExColors.purple,
      warning: ExColors.yellowCA960E,
      danger: ExColors.redFF7673,
    );
  }

  @override
  List<Object?> get props => [
        info,
        warning,
        danger,
      ];
}

class ExThemeAnnouncementBannerText extends BaseData {
  final Color info;
  final Color warning;
  final Color danger;

  ExThemeAnnouncementBannerText._({
    required this.info,
    required this.warning,
    required this.danger,
  });

  factory ExThemeAnnouncementBannerText.dark() {
    return ExThemeAnnouncementBannerText._(
      info: ExColors.purple,
      warning: ExColors.yellowCA960E,
      danger: ExColors.redFF7673,
    );
  }

  factory ExThemeAnnouncementBannerText.light() {
    return ExThemeAnnouncementBannerText._(
      info: ExColors.black364152,
      warning: ExColors.yellowCA960E,
      danger: ExColors.redFF4642,
    );
  }

  @override
  List<Object?> get props => [
        info,
        warning,
        danger,
      ];
}

class ExMissionColors extends BaseData {
  final Color stepper;
  final Color bodyText;
  final Color icon;
  final Color missiononSuccessOldUser;
  final Color missionprimaryStar;

  ExMissionColors(
      {required this.stepper,
      required this.bodyText,
      required this.icon,
      required this.missiononSuccessOldUser,
      required this.missionprimaryStar});

  factory ExMissionColors.light() {
    return ExMissionColors(
      stepper: ExColors.greyF1F5F8,
      bodyText: ExColors.black364152,
      icon: ExColors.purple8966CC,
      missiononSuccessOldUser: ExColors.grey697586,
      missionprimaryStar: ExColors.purple.shade300,
    );
  }

  factory ExMissionColors.dark() {
    return ExMissionColors(
        stepper: ExColors.grayDark[50]!,
        bodyText: ExColors.white.withOpacity(0.7),
        icon: ExColors.purpleE1D9F2,
        missiononSuccessOldUser: ExColors.white,
        missionprimaryStar: ExColors.purple.shade800);
  }

  @override
  List<Object?> get props => [
        stepper,
        bodyText,
        icon,
        missiononSuccessOldUser,
        missionprimaryStar,
      ];
}

class ExThemeActionColors extends BaseData {
  final Color primary;
  final Color secondary;
  final Color disabled;
  final Color danger;

  ExThemeActionColors({
    required this.primary,
    required this.secondary,
    required this.disabled,
    required this.danger,
  });

  factory ExThemeActionColors.light() => ExThemeActionColors(
        primary: ExThemeMaterialColors.light().dynamite.shade500,
        secondary: ExThemeMaterialColors.light().malinka.shade400,
        disabled: ExThemeMaterialColors.light().gray.shade100,
        danger: ExThemeMaterialColors.light().error.shade400,
      );

  factory ExThemeActionColors.dark() => ExThemeActionColors(
        primary: ExThemeMaterialColors.dark().dynamite.shade400,
        secondary: ExThemeMaterialColors.dark().malinka.shade400,
        disabled: ExThemeMaterialColors.dark().gray.shade100,
        danger: ExThemeMaterialColors.dark().error.shade400,
      );

  @override
  List<Object?> get props => [primary, secondary, disabled, danger];
}
