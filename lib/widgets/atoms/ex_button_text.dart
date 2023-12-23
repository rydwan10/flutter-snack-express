import 'package:flutter/material.dart';
import 'package:snack_express/config/theme/constant/colors.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';

class ExButtonText extends StatelessWidget {
  static TextStyle? defaultTextStyleButton(BuildContext context) =>
      context.exTextTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w700,
      );

  const ExButtonText({
    Key? key,
    required this.text,
    this.color,
    this.style,
    this.isFilled = true,
    this.enabled = true,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final Color? color;
  final bool isFilled;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: style ??
            defaultTextStyleButton(context)?.copyWith(
              color: getColor(context),
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }

  Color getColor(BuildContext context) {
    if (!enabled) return context.exColor.text.disabled;
    if (color != null) return color!;
    return isFilled ? ExColors.white : context.exColor.text.primary;
  }
}
