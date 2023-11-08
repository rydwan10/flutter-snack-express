import 'package:flutter/material.dart';

class ExColors {
  /// Default color
  static const Color transparent = Colors.transparent;

  static const Color white = Colors.white;

  static const Color black = Colors.black;

  /// Material Color

  static const int _neutralValue = 0xFF697586;
  static const MaterialColor neutral = MaterialColor(
    _neutralValue,
    <int, Color>{
      00: Color(0xFFFFFFFF),
      25: Color(0xFFF5F7FA),
      50: Color(0xFFF1F5F8),
      100: Color(0xFFEEF2F6),
      200: Color(0xFFE3E8EF),
      300: Color(0xFFCDD5DF),
      400: Color(0xFF9AA3B2),
      500: Color(_neutralValue),
      600: Color(0xFF4B5565),
      700: Color(0xFF364152),
      800: Color(0xFF202939),
      900: Color(0xFF121926),
    },
  );

  static const int _grayValue = 0xFF95A1B2;
  static const MaterialColor gray = MaterialColor(
    _grayValue,
    <int, Color>{
      00: Color(0xFFFFFFFF),
      25: Color(0xFFF9FAFB),
      50: Color(0xFFF3F4F7),
      100: Color(0xFFE7EAEE),
      200: Color(0xFFDEE2E7),
      300: Color(0xFFD3D8DF),
      400: Color(0xFFBEC5D0),
      500: Color(_grayValue),
      600: Color(0xFF6E7D91),
      700: Color(0xFF3D4A5C),
      800: Color(0xFF29313D),
      900: Color(0xFF161B22),
    },
  );

  static const int _neutralDarkValue = 0xFF848BA4;
  static const MaterialColor neutralDark = MaterialColor(
    _neutralDarkValue,
    <int, Color>{
      00: Color(0xFF161424),
      25: Color(0xFF1D1B27),
      50: Color(0xFF22212B),
      100: Color(0xFF2B2A37),
      200: Color(0xFF3A3A45),
      300: Color(0xFF575766),
      400: Color(0xFF797C8B),
      500: Color(_neutralDarkValue),
      600: Color(0xFFABB2BF),
      700: Color(0xFFDDDFE7),
      800: Color(0xFFEEEFF2),
      900: Color(0xFFFFFFFF),
    },
  );

  static const int _purpleValue = 0xFF6A49AB;
  static const MaterialColor purple = MaterialColor(
    _purpleValue,
    <int, Color>{
      25: Color(0xFFF5F0FE),
      50: Color(0xFFE9E0FA),
      100: Color(0xFFDBCDF4),
      200: Color(0xFFC7B4EE),
      300: Color(0xFFA688DD),
      400: Color(0xFF7C5CBC),
      500: Color(_purpleValue),
      600: Color(0xFF5B36A1),
      700: Color(0xFF4D288F),
      800: Color(0xFF3E1C7D),
      900: Color(0xFF311664),
    },
  );

  static const int _tealValue = 0xFF00B7BD;
  static const MaterialColor teal = MaterialColor(
    _tealValue,
    <int, Color>{
      25: Color(0xFFE7FEFF),
      50: Color(0xFFD0F7F8),
      100: Color(0xFFB9F0F2),
      200: Color(0xFF8BE2E5),
      300: Color(0xFF5CD4D8),
      400: Color(0xFF2EC6CB),
      500: Color(_tealValue),
      600: Color(0xFF009398),
      700: Color(0xFF006E72),
      800: Color(0xFF003739),
      900: Color(0xFF002526),
    },
  );

  static const int _successValue = 0xFF00B59D;
  static const MaterialColor success = MaterialColor(
    _successValue,
    <int, Color>{
      25: Color(0xFFDEFFFB),
      50: Color(0xFFD1FAF4),
      100: Color(0xFFB2F0E8),
      200: Color(0xFF85E1D5),
      300: Color(0xFF59D3C2),
      400: Color(0xFF2CC4B0),
      500: Color(_successValue),
      600: Color(0xFF00917D),
      700: Color(0xFF006D5E),
      800: Color(0xFF00483F),
      900: Color(0xFF00362F),
    },
  );

  static const int _errorValue = 0xFFED3768;
  static const MaterialColor error = MaterialColor(
    _errorValue,
    <int, Color>{
      25: Color(0xFFFDEBF0),
      50: Color(0xFFFBD7E1),
      100: Color(0xFFFAC3D2),
      200: Color(0xFFF8AFC3),
      300: Color(0xFFF487A4),
      400: Color(0xFFF15F86),
      500: Color(_errorValue),
      600: Color(0xFFBE2C53),
      700: Color(0xFF8E213E),
      800: Color(0xFF5F162A),
      900: Color(0xFF47111F),
    },
  );

  static const int _warningValue = 0xFFFDBB11;
  static const MaterialColor warning = MaterialColor(
    _warningValue,
    <int, Color>{
      25: Color(0xFFFFF8E7),
      50: Color(0xFFFFF1CF),
      100: Color(0xFFFEEBB8),
      200: Color(0xFFFEE4A0),
      300: Color(0xFFFED670),
      400: Color(0xFFFDC941),
      500: Color(_warningValue),
      600: Color(0xFFCA960E),
      700: Color(0xFF98700A),
      800: Color(0xFF654B07),
      900: Color(0xFF332503),
    },
  );

  static const int _infoValue = 0xFF2558D0;
  static const MaterialColor info = MaterialColor(
    _warningValue,
    <int, Color>{
      25: Color(0xFFE1EBFF),
      50: Color(0xFFC7D7FF),
      100: Color(0xFFACC2F7),
      200: Color(0xFF7FA1ED),
      300: Color(0xFF5480E8),
      400: Color(0xFF3A6DE4),
      500: Color(_infoValue),
      600: Color(0xFF1646B6),
      700: Color(0xFF103793),
      800: Color(0xFF072C88),
      900: Color(0xFF01226A),
    },
  );

  static const int _primaryValue = 0xFF482C7D;
  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      25: Color(0xFFF3F0FA),
      50: Color(0xFFE1D9F2),
      100: Color(0xFFC5B9DA),
      200: Color(0xFFA78CD9),
      300: Color(0xFF8966CC),
      400: Color(0xFF6C40BF),
      500: Color(_primaryValue),
      600: Color(0xFF422B67),
      700: Color(0xFF312460),
      800: Color(0xFF1E0A43),
      900: Color(0xFF130826),
    },
  );

  static const int _primaryDarkValue = 0xFFB098DC;
  static const MaterialColor primaryDark = MaterialColor(
    _primaryDarkValue,
    <int, Color>{
      25: Color(0xFF231241),
      50: Color(0xFF2D135D),
      100: Color(0xFF421C87),
      200: Color(0xFF633BB0),
      300: Color(0xFF8966CC),
      400: Color(0xFF9B7CD4),
      500: Color(_primaryDarkValue),
      600: Color(0xFFC1AFE4),
      700: Color(0xFFC5B9DA),
      800: Color(0xFFE1D9F2),
      900: Color(0xFFF3F0FA),
    },
  );

  static const int _grayDarkValue = 0xFF888CA5;
  static const MaterialColor grayDark = MaterialColor(
    _grayDarkValue,
    <int, Color>{
      00: Color(0xFF211F2D),
      25: Color(0xFF2C2A3C),
      50: Color(0xFF39364E),
      100: Color(0xFF413F5A),
      200: Color(0xFF454563),
      300: Color(0xFF565876),
      400: Color(0xFF696E8C),
      500: Color(_grayDarkValue),
      600: Color(0xFFC6C8D2),
      700: Color(0xFFE8E9ED),
      800: Color(0xFFF1F1F4),
      900: Color(0xFFFFFFFF),
    },
  );

  static const int _purpleDarkValue = 0xFFB59BE9;
  static const MaterialColor purpleDark = MaterialColor(
    _purpleDarkValue,
    <int, Color>{
      25: Color(0xFF28154C),
      50: Color(0xFF341867),
      100: Color(0xFF402079),
      200: Color(0xFF552F9D),
      300: Color(0xFF6C45BA),
      400: Color(0xFF8966CC),
      500: Color(_purpleDarkValue),
      600: Color(0xFFCDBCF0),
      700: Color(0xFFD8C9F3),
      800: Color(0xFFE3D9F7),
      900: Color(0xFFE9E2F9),
    },
  );

  static const int _tealDarkValue = 0xFF47D2D7;
  static const MaterialColor tealDark = MaterialColor(
    _tealDarkValue,
    <int, Color>{
      25: Color(0xFF003739),
      50: Color(0xFF004547),
      100: Color(0xFF00595C),
      200: Color(0xFF007B80),
      300: Color(0xFF089BA0),
      400: Color(0xFF29B8BC),
      500: Color(_tealDarkValue),
      600: Color(0xFF84E8EB),
      700: Color(0xFFA7EFF1),
      800: Color(0xFFC9F6F8),
      900: Color(0xFFDBFEFF),
    },
  );

  static const int _successDarkValue = 0xFF59D3BB;
  static const MaterialColor successDark = MaterialColor(
    _successDarkValue,
    <int, Color>{
      25: Color(0xFF00362C),
      50: Color(0xFF00483A),
      100: Color(0xFF006D58),
      200: Color(0xFF009175),
      300: Color(0xFF0BAA8B),
      400: Color(0xFF2CC4A7),
      500: Color(_successDarkValue),
      600: Color(0xFF85E1D0),
      700: Color(0xFFB2F0E4),
      800: Color(0xFFC8F8EF),
      900: Color(0xFFE1FCF7),
    },
  );

  static const int _errorDarkValue = 0xFFFF6E88;
  static const MaterialColor errorDark = MaterialColor(
    _errorDarkValue,
    <int, Color>{
      25: Color(0xFF550D1A),
      50: Color(0xFF801327),
      100: Color(0xFFAA1933),
      200: Color(0xFFD22242),
      300: Color(0xFFE93C5B),
      400: Color(0xFFED5C76),
      500: Color(_errorDarkValue),
      600: Color(0xFFF8AFC3),
      700: Color(0xFFFAC3D2),
      800: Color(0xFFFCD6DD),
      900: Color(0xFFFEF1F0),
    },
  );

  static const int _warningDarkValue = 0xFFFBD573;
  static const MaterialColor warningDark = MaterialColor(
    _warningDarkValue,
    <int, Color>{
      25: Color(0xFF4B3602),
      50: Color(0xFF6F5206),
      100: Color(0xFF98700A),
      200: Color(0xFFCA960E),
      300: Color(0xFFF1B61D),
      400: Color(0xFFF5C649),
      500: Color(_warningDarkValue),
      600: Color(0xFFFEE4A0),
      700: Color(0xFFFEEBB8),
      800: Color(0xFFFFF1CF),
      900: Color(0xFFFFF8E7),
    },
  );

  static const int _infoDarkValue = 0xFF85A6F4;
  static const MaterialColor infoDark = MaterialColor(
    _warningValue,
    <int, Color>{
      25: Color(0xFF0D224F),
      50: Color(0xFF152C65),
      100: Color(0xFF173782),
      200: Color(0xFF254CA7),
      300: Color(0xFF2C5BC9),
      400: Color(0xFF5984E8),
      500: Color(_infoDarkValue),
      600: Color(0xFF9DB6F1),
      700: Color(0xFFB5C9F7),
      800: Color(0xFFCCDBFF),
      900: Color(0xFFE1EBFF),
    },
  );

  static const int _dynamiteValue = 0xFFFD3D21;
  static const MaterialColor dynamite = MaterialColor(
    _dynamiteValue,
    <int, Color>{
      25: Color(0xFFFFEDEA),
      50: Color(0xFFFFD8D3),
      100: Color(0xFFFEBEB5),
      200: Color(0xFFFE9E90),
      300: Color(0xFFFE7E6B),
      400: Color(0xFFFD5D46),
      500: Color(_dynamiteValue),
      600: Color(0xFFD3331C),
      700: Color(0xFFA92916),
      800: Color(0xFF7F1F11),
      900: Color(0xFF54140B),
    },
  );

  static const int _malinkaValue = 0xFFFD3D21;
  static const MaterialColor malinka = MaterialColor(
    _malinkaValue,
    <int, Color>{
      25: Color(0xFFFFF0F2),
      50: Color(0xFFFDDADF),
      100: Color(0xFFFCC2CA),
      200: Color(0xFFFBA3B0),
      300: Color(0xFFFA8596),
      400: Color(0xFFF8677B),
      500: Color(_malinkaValue),
      600: Color(0xFFCE3C51),
      700: Color(0xFFA53041),
      800: Color(0xFF7C2431),
      900: Color(0xFF521820),
    },
  );

  /// Custom Color

  static const Color black161424 = Color(0xFF161424);

  static const Color black1D1B31 = Color(0xFF1D1B31);

  static const Color black364152 = Color(0xFF364152);

  static const Color black4B5565 = Color(0xFF4B5565);

  static const Color purple6B53A3 = Color(0xFF6B53A3);

  static const Color purple1D1B31 = Color(0xFF1D1B31);

  static const Color purpleF3F0F9 = Color(0xFFF3F0F9);

  static const Color grey161425 = Color(0xFF161425);

  static const Color grey364152 = Color(0xFF364152);

  static const Color grey3D424D = Color(0xFF3D424D);

  static const Color grey454350 = Color(0xFF454350);

  static const Color greyBCCCDF = Color(0xFFBCCCDF);

  static const Color greenD9F2EF = Color(0xFFD9F2EF);

  static const Color yellowFFA50A = Color(0xFFFFA50A);

  static const Color yellowDBA005 = Color(0xFFDBA005);

  static const Color yellowFFC107 = Color(0xffffc107);

  static const Color purpleF3F0FA = Color(0xFFF3F0FA);

  static const Color greenECF9F7 = Color(0xFFECF9F7);

  // Announcement address wallet bg color warning
  static const Color yellowFFF7CD = Color(0xffFFF7CD);

  // Announcement address wallet border color warning
  static const Color yellow7A4F01 = Color(0xff7A4F01);

  // Announcement address wallet text color warning
  static const Color yellowB78103 = Color(0xffB78103);

  // Announcement address wallet bg color danger
  static const Color redF7DCDB = Color(0xffF7DCDB);

  // Announcement address wallet border color danger
  static const Color redFF7673 = Color(0xffFF7673);

  // Announcement address wallet text color danger
  static const Color redFF4642 = Color(0xffFF4642);

  static const Color redFF4A6B = Color(0xFFFF4A6B);

  // Announcement home banner
  static const Color yellowCA960E = Color(0xffCA960E);

  static const Color yellowFFF8E7 = Color(0xffFFF8E7);

  /// Light - Primary

  static const Color purpleA073F4 = Color(0xFFA073F4);

  static const Color purple8966CC = Color(0xFF8966CC);

  static const Color purple6C40BF = Color(0xFF6C40BF);

  static const Color purple482C7D = Color(0xFF482C7D);

  static const Color purpleE1D9F2 = Color(0xFFE1D9F2);

  /// Light - Secondary
  static const Color cyan00B4BA = Color(0xFF00B4BA);

  static const Color cyan22BEC3 = Color(0xFF22BEC3);

  static const Color cyan26C6B3 = Color(0xFF26C6B3);

  static const Color cyan00969B = Color(0xFF26C6B3);

  static const Color cyanB3E6DF = Color(0xFFB3E6DF);

  static const Color redF68784 = Color(0xFFF68784);

  static const Color redFF6661 = Color(0xFFFF6661);

  static const Color redFEF1F0 = Color(0xFFFEF1F0);

  static const Color redFCCBCA = Color(0xFFFCCBCA);

  static const Color redFF264D = Color(0xFFFF264D);

  static const Color green1DBD53 = Color(0xFF1DBD53);

  static const Color grey4E4C5C = Color(0xFF4E4C5C);

  static const Color grey697586 = Color(0xFF697586);

  static const Color greyB9B8BD = Color(0xFFB9B8BD);

  static const Color greyCDD5DF = Color(0xFFCDD5DF);

  static const Color greyD6F7F7 = Color(0xFFD6F7F7);

  static const Color greyF1F5F8 = Color(0xFFF1F5F8);

  static const Color greyE2D9F2 = Color(0xFFE2D9F2);

  static const Color greyE3E8EF = Color(0xFFE3E8EF);

  static const Color containerBorderDark = Color(0xFFF3F0FA);

  static const Color disableDark = Color(0xFF3A3A45);

  static const Color greyEDEDED = Color(0xFFEDEDED);

  static const Color greyEAFAF8 = Color(0xFFEAFAF8);

  static const Color grey9AA4B2 = Color(0xFF9AA4B2);

  static const Color greyF3F0FA = Color(0xFFF3F0FA);

  static const Color darkSemiPrimary = Color(0xFF231241);

  static const Color greyEEF2F6 = Color(0xFFEEF2F6);

  static const Color greyDFF8F9 = Color(0xFFDFF8F9);

  static const Color greyCCD5DF = Color(0xFFCCD5DF);

  static const Color blueA0E2F8 = Color(0xFFA0E2F8);

  static const Color blueF1FBFE = Color(0xFFF1FBFE);

  static const Color blueE1EBFF = Color(0xFFE1EBFF);

  static const Color blue3267E3 = Color(0xFF3267E3);

  static const Color blue193472 = Color(0xFF193472);

  static const Color blue214597 = Color(0xFF214597);

  /// Dark
  static const Color black1D1A2F = Color(0xFF1D1A2F);

  static const Color purple281152 = Color(0xFF281152);

  static const Color purple4F4D66 = Color(0xFF4F4D66);

  static const Color purple272442 = Color(0xFF272442);

  static const Color purple312D53 = Color(0xFF312D53);

  static const Color black282732 = Color(0xFF282732);

  static const Color purple312D52 = Color(0xFF312D52);

  static const Color purple625AA5 = Color(0xFF625AA5);

  static const Color green009355 = Color(0xFF009355);

  static const Color cyan0F4E50 = Color(0xFF0F4E50);

  static const Color grey9AA3B2 = Color(0xFF9AA3B2);

  static const Color black241F20 = Color(0xFF241F20);

  static const Color blue38CAFA = Color(0xFF38CAFA);

  static const Color red550D1A = Color(0xFF550D1A);

  static Color shimmer = Color(0xffF2F2F2).withOpacity(0.5);

  static const Color shimmerHighlight = Color(0xffF2F2F2);

  static const Color verificationTextColor = Color(0xff9AA3B2);

  static const Color skyBorderColor = Color(0xffA0E2F8);
  static const Color skyBackgroundColor = Color(0xffF1FBFE);

  static const Color deleteAccountBorderColor = Color(0xffECEFF5);

  static const Color deleteSkyBorderColor = Color(0xffA0E2F8);
  static const Color deleteSkyBackgroundColor = Color(0xffF1FBFE);

  static const Color greyTextColor = Color(0xff9AA3B2);

  static const Color tabActiveBorder = Color(0xff6C40BF);

  static const Color phoneNumberBlackColor = Color(0xff4B5565);

  static const Color textBlackColor121926 = Color(0xff121926);
  static const Color greenDark = Color(0xff13635A);

  static const Color correct = Color(0xff19C320);
  static const Color correctDark = Color(0xff005A5D);
  static const Color missed = Color(0xff697586);
  static const Color incorrect = Color(0xffCD0101);
  static const Color questionBg = Color(0xffF3F0FA);
  static const Color questionBgDark = Color(0xff231241);
  static const Color questionNoBg = Color(0xffF7931A);

  static const Color disableStartingGrey = Color(0xff8A7F9F);
  static const Color disableEndingGrey = Color(0xff7B7091);
  static const Color disableStartingGreyDark = Color(0xff421C87);
  static const Color disableEndingGreyDark = Color(0xff421C87);
  static const Color stepperStartingPurple = Color(0xffA279EE);
  static const Color stepperEndingPurple = Color(0xffA378F4);
  static const Color quizContainerBackground = Color(0xff00B8BE);
  static const Color quizContainerBackgroundDark = Color(0xff00787C);
  static const Color ExizRevealingin = Color(0xff482C7D);

  static const Color swipeUpTail = Color(0xFFD0F7F8);

  static const List<Color> gradientLightTradeLite = [
    Color(0xffF1ECFB),
    Colors.white,
  ];

  static const List<Color> gradientDarkTradeLite = [
    Color(0xFF342753),
    Colors.transparent,
  ];
}
