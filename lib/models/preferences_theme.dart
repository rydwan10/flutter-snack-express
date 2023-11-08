import 'package:equatable/equatable.dart';
import 'package:snack_express/config/theme/theme.dart';

class PreferencesTheme extends Equatable {
  final ExTheme theme;

  const PreferencesTheme({
    required this.theme,
  });

  PreferencesTheme copyWith({
    ExTheme? theme,
  }) =>
      PreferencesTheme(
        theme: theme ?? this.theme,
      );

  @override
  List<Object?> get props => [
        theme,
      ];
}
