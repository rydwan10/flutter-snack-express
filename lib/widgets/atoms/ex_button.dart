import 'package:flutter/material.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';
import 'package:snack_express/widgets/atoms/ex_button_text.dart';
import 'package:snack_express/widgets/atoms/ex_loading_indicator.dart';
import 'package:snack_express/widgets/atoms/styles/ex_button_style.dart';

enum ExButtonType {
  elevated,
  elevatedSecondary,
  elevatedTertiary,
  outlined,
  outlinedSecondary,
  text,
  semiElevatedPrimary,
  semiElevatedPrimaryBordered,
  semiElevatedSecondary,
  semiElevatedSecondaryBordered,
  elevatedWidgetBody
}

class ExButton extends StatelessWidget {
  final ExButtonType type;
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final bool isLoading;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;
  final FocusNode? focusNode;
  final ButtonStyle? buttonStyle;
  final bool autofocus;
  final Clip clipBehavior;
  final MaterialStatesController? statesController;
  final Color? activeColor;
  final Color? loadingIndicatorColor;

  final Color? disabledBackgroundColor;
  final double height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? widgetBody;

  const ExButton(
      {Key? key,
      this.type = ExButtonType.elevated,
      required this.text,
      this.textStyle,
      this.onPressed,
      this.isLoading = false,
      this.onLongPress,
      this.onHover,
      this.onFocusChange,
      this.focusNode,
      this.buttonStyle,
      this.autofocus = false,
      this.clipBehavior = Clip.none,
      this.statesController,
      this.activeColor,
      this.loadingIndicatorColor,
      this.disabledBackgroundColor,
      this.height = 48,
      this.width = double.infinity,
      this.margin,
      this.padding,
      this.widgetBody})
      : super(key: key);

  factory ExButton.dense({
    Key? key,
    ExButtonType type = ExButtonType.elevated,
    required String text,
    TextStyle? textStyle,
    VoidCallback? onPressed,
    bool isLoading = false,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    ButtonStyle? buttonStyle,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    MaterialStatesController? statesController,
    Color? activeColor,
    double height = 48,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
  }) {
    return ExButton(
      key: key,
      type: type,
      text: text,
      padding: padding,
      width: null,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      onPressed: onPressed,
      height: height,
      isLoading: isLoading,
      margin: margin,
      buttonStyle: buttonStyle,
      activeColor: activeColor,
      textStyle: textStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: createButton(context),
    );
  }

  Widget createButton(BuildContext context) {
    bool enabled = !isLoading && onPressed != null;
    switch (type) {
      case ExButtonType.outlinedSecondary:
        return OutlinedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.outlinedSecondaryButtonStyle(
                context: context,
                activeColor: activeColor,
                padding: padding,
                enabled: enabled,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  style: context.exTextTheme.labelLarge?.copyWith(
                    color: context.exColor.text.secondary,
                    fontWeight: FontWeight.w700,
                  ),
                  text: text,
                  isFilled: false,
                  color: activeColor,
                  enabled: enabled,
                ),
        );

      case ExButtonType.outlined:
        return OutlinedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.outlinedButtonStyle(
                context: context,
                activeColor: activeColor,
                padding: padding,
                enabled: enabled,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  isFilled: false,
                  style: textStyle,
                  color: activeColor,
                  enabled: enabled,
                ),
        );
      case ExButtonType.text:
        return TextButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.textButtonStyle(
                context: context,
                padding: padding,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  isFilled: false,
                  style: textStyle,
                  color: activeColor,
                  enabled: enabled,
                ),
        );
      case ExButtonType.elevatedTertiary:
        return ElevatedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: context.exColor.button.tertiary,
                padding: padding,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  style: textStyle,
                  enabled: enabled,
                  color: context.exColor.text.onButtonTertiary,
                ),
        );
      case ExButtonType.elevatedSecondary:
        return ElevatedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: context.exColor.actionColors.secondary,
                padding: padding,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  style: textStyle,
                  enabled: enabled,
                  color: context.exColor.text.onButtonSecondary,
                ),
        );
      case ExButtonType.elevatedWidgetBody:
        return ElevatedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: activeColor,
                padding: padding,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : widgetBody,
        );
      case ExButtonType.semiElevatedPrimary:
        return ElevatedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: context.exColor.button.semiPrimary,
                padding: padding,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  style: textStyle,
                  enabled: enabled,
                  color: context.exColor.text.onButtonSemiPrimary,
                ),
        );
      case ExButtonType.semiElevatedPrimaryBordered:
        return ElevatedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.elevatedBorderedButtonStyle(
                context: context,
                activeColor: context.exColor.button.semiPrimary,
                padding: padding,
                enabled: enabled,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  style: textStyle,
                  enabled: enabled,
                  color: context.exColor.text.onButtonSemiPrimary,
                ),
        );
      case ExButtonType.semiElevatedSecondary:
        return ElevatedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: context.exColor.button.semiSecondary,
                padding: padding,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  style: textStyle,
                  enabled: enabled,
                  color: context.exColor.text.onButtonSemiSecondary,
                ),
        );
      case ExButtonType.semiElevatedSecondaryBordered:
        return ElevatedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.elevatedBorderedButtonStyle(
                context: context,
                activeColor: context.exColor.button.semiSecondary,
                padding: padding,
                borderColor: context.exColor.actionColors.secondary,
                enabled: enabled,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  style: textStyle,
                  enabled: enabled,
                  color: context.exColor.text.onButtonSemiSecondary,
                ),
        );
      case ExButtonType.elevated:
      default:
        return ElevatedButton(
          key: key,
          onPressed: isLoading ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: activeColor,
                disabledBackgroundColor: disabledBackgroundColor,
                padding: padding,
              ),
          child: isLoading
              ? ExLoadingIndicator(color: loadingIndicatorColor)
              : ExButtonText(
                  text: text,
                  style: textStyle,
                  enabled: enabled,
                ),
        );
    }
  }
}
