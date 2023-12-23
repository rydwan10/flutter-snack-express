part of 'theme.dart';

class ExThemeImages extends BaseData {
  final ExThemeImagesSvg svg;
  final ExThemeImagesPng png;

  ExThemeImages({
    required this.svg,
    required this.png,
  });

  factory ExThemeImages.light() {
    return ExThemeImages(
      svg: ExThemeImagesSvg.light(),
      png: ExThemeImagesPng.light(),
    );
  }

  factory ExThemeImages.dark() {
    return ExThemeImages(
      svg: ExThemeImagesSvg.dark(),
      png: ExThemeImagesPng.dark(),
    );
  }

  @override
  List<Object?> get props => [svg, png];
}

class ExThemeImagesSvg extends BaseData {
  final String icSearch;
  final String icFavorite;
  final String icFavoriteOutline;
  final String icMapPin;
  final String icCartOutline;

  ExThemeImagesSvg({
    required this.icSearch,
    required this.icFavorite,
    required this.icFavoriteOutline,
    required this.icMapPin,
    required this.icCartOutline,
  });

  factory ExThemeImagesSvg.light() {
    return ExThemeImagesSvg(
      icSearch: ExVectors.icSearch,
      icFavorite: ExVectors.icFavorite,
      icFavoriteOutline: ExVectors.icFavoriteOutline,
      icMapPin: ExVectors.icMapPin,
      icCartOutline: ExVectors.icCartOutline,
    );
  }

  factory ExThemeImagesSvg.dark() {
    return ExThemeImagesSvg(
      icSearch: ExVectors.icSearch,
      icFavorite: ExVectors.icFavorite,
      icFavoriteOutline: ExVectors.icFavoriteOutline,
      icMapPin: ExVectors.icMapPin,
      icCartOutline: ExVectors.icCartOutline,
    );
  }

  @override
  List<Object?> get props => [
        icSearch,
        icFavorite,
        icFavoriteOutline,
        icMapPin,
        icCartOutline,
      ];
}

class ExThemeImagesPng extends BaseData {
  ExThemeImagesPng();

  factory ExThemeImagesPng.light() {
    return ExThemeImagesPng();
  }

  factory ExThemeImagesPng.dark() {
    return ExThemeImagesPng();
  }

  @override
  List<Object?> get props => [];
}
