part of 'theme.dart';

class ExThemeFont extends BaseData {
  final String fontFamily;

  ExThemeFont({
    required this.fontFamily,
  });

  factory ExThemeFont.create() {
    return ExThemeFont(fontFamily: "Urbanist");
  }

  @override
  List<Object?> get props => [
        fontFamily,
      ];
}
