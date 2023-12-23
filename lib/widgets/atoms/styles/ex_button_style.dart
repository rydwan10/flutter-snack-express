import 'package:flutter/material.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';

class ExButtonStyle {
  static ButtonStyle elevatedButtonStyle({
    required BuildContext context,
    Color? activeColor,
    Color? disabledBackgroundColor,
    EdgeInsetsGeometry? padding,
  }) {
    return ElevatedButton.styleFrom(
      disabledBackgroundColor: disabledBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: activeColor,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
    );
  }

  static ButtonStyle elevatedBorderedButtonStyle({
    required BuildContext context,
    Color? activeColor,
    Color? borderColor,
    bool enabled = true,
    EdgeInsetsGeometry? padding,
  }) {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: activeColor,
      side: BorderSide(
        color: enabled
            ? borderColor ?? context.exColor.button.main
            : context.exColor.button.disabled,
      ),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
    );
  }

  static ButtonStyle outlinedButtonStyle({
    required BuildContext context,
    Color? activeColor,
    Color? disabledBackgroundColor,
    EdgeInsetsGeometry? padding,
    bool enabled = true,
    double borderRadius = 100,
  }) {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      side: BorderSide(
        color: enabled
            ? activeColor ?? context.exColor.actionColors.primary
            : context.exColor.actionColors.disabled,
      ),
      disabledBackgroundColor: disabledBackgroundColor ?? Colors.transparent,
      foregroundColor: enabled
          ? activeColor ?? context.exColor.button.outline
          : context.exColor.actionColors.disabled,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
    );
  }

  static ButtonStyle outlinedSecondaryButtonStyle({
    required BuildContext context,
    Color? activeColor,
    Color? disabledBackgroundColor,
    EdgeInsetsGeometry? padding,
    bool enabled = true,
  }) {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      side: BorderSide(
        color: enabled
            ? activeColor ?? context.exColor.actionColors.secondary
            : context.exColor.actionColors.disabled,
      ),
      disabledBackgroundColor: disabledBackgroundColor ?? Colors.transparent,
      foregroundColor: enabled
          ? activeColor ?? context.exColor.button.outline
          : context.exColor.actionColors.disabled,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
    );
  }

  static ButtonStyle textButtonStyle({
    required BuildContext context,
    EdgeInsetsGeometry? padding,
  }) {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
    );
  }

  @Deprecated("Use elevatedButtonStyle instead.")
  static ButtonStyle defaultButtonDeprecatedStyle() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
      ),
      backgroundColor: Colors.black,
    );
  }

  @Deprecated("Use outlinedButtonStyle instead.")
  static ButtonStyle outlinedButtonDeprecatedStyle() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
        side: const BorderSide(
          width: 1,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  @Deprecated("Don't use")
  static ButtonStyle disabledButtonDeprecatedStyle() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
