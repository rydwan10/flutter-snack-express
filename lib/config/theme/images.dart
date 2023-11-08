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
  ExThemeImagesSvg();

  factory ExThemeImagesSvg.light() {
    return ExThemeImagesSvg();
  }

  factory ExThemeImagesSvg.dark() {
    return ExThemeImagesSvg();
  }

  @override
  List<Object?> get props => [];
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
