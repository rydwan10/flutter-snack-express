import 'package:flutter/material.dart';
import 'package:snack_express/utils/extensions/context_ext.dart';
import 'package:snack_express/widgets/atoms/ex_button_text.dart';
import 'package:snack_express/widgets/atoms/ex_loading_indicator.dart';
import 'package:snack_express/widgets/atoms/styles/ex_button_style.dart';

enum ExIconTextButtonType {
  elevated,
  elevatedSecondary,
  elevatedTertiary,
  outlined,
  text
}

class ExIconTextButton extends StatelessWidget {
  final ExIconTextButtonType type;
  final IconData? icon;
  final double iconSize;
  final Widget? iconWidget;
  final String? text;
  final TextStyle? textStyle;
  final Widget? textWidget;
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
  final double height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const ExIconTextButton({
    Key? key,
    this.type = ExIconTextButtonType.elevated,
    this.icon,
    this.iconSize = 24,
    required this.text,
    this.textStyle,
    this.iconWidget,
    this.textWidget,
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
    this.height = 48,
    this.width = double.infinity,
    this.margin,
    this.padding,
  }) : super(key: key);

  factory ExIconTextButton.dense({
    Key? key,
    ExIconTextButtonType type = ExIconTextButtonType.elevated,
    IconData? icon,
    double iconSize = 24,
    Widget? iconWidget,
    required String text,
    TextStyle? textStyle,
    Widget? textWidget,
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
    return ExIconTextButton(
      key: key,
      type: type,
      icon: icon,
      iconSize: iconSize,
      iconWidget: iconWidget,
      text: text,
      textStyle: textStyle,
      textWidget: textWidget,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: createButton(context, padding),
    );
  }

  Widget createButton(BuildContext context, EdgeInsetsGeometry? padding) {
    bool enabled = !isLoading && onPressed != null;
    Icon icon_ = Icon(
      icon,
      color: activeColor,
      size: iconSize,
    );

    switch (type) {
      case ExIconTextButtonType.outlined:
        return OutlinedButton.icon(
          key: key,
          onPressed: isLoading ? null : onPressed,
          icon: iconWidget ?? icon_,
          label: isLoading
              ? const ExLoadingIndicator()
              : textWidget ??
                  ExButtonText(
                    text: text ?? "",
                    isFilled: false,
                    style: textStyle,
                    color: activeColor,
                    enabled: enabled,
                  ),
          onLongPress: onLongPress,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          style: buttonStyle ??
              ExButtonStyle.outlinedButtonStyle(
                context: context,
                activeColor: activeColor,
                padding: padding,
                enabled: enabled,
              ),
        );
      case ExIconTextButtonType.text:
        return TextButton.icon(
          key: key,
          onPressed: isLoading ? null : onPressed,
          icon: iconWidget ?? icon_,
          label: isLoading
              ? const ExLoadingIndicator()
              : textWidget ??
                  ExButtonText(
                    text: text ?? "",
                    isFilled: false,
                    style: textStyle,
                    color: activeColor,
                    enabled: enabled,
                  ),
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          style: buttonStyle ??
              ExButtonStyle.textButtonStyle(
                context: context,
                padding: padding,
              ),
        );
      case ExIconTextButtonType.elevatedTertiary:
        return ElevatedButton.icon(
          key: key,
          onPressed: isLoading ? null : onPressed,
          icon: iconWidget ?? icon_,
          label: isLoading
              ? const ExLoadingIndicator()
              : textWidget ??
                  ExButtonText(
                    text: text ?? "",
                    style: textStyle,
                    enabled: enabled,
                    color: context.exColor.text.onButtonTertiary,
                  ),
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: context.exColor.button.tertiary,
                padding: padding,
              ),
        );
      case ExIconTextButtonType.elevatedSecondary:
        return ElevatedButton.icon(
          key: key,
          onPressed: isLoading ? null : onPressed,
          icon: iconWidget ?? icon_,
          label: isLoading
              ? const ExLoadingIndicator()
              : textWidget ??
                  ExButtonText(
                    text: text ?? "",
                    style: textStyle,
                    enabled: enabled,
                    color: context.exColor.text.onButtonSecondary,
                  ),
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: context.exColor.button.secondary,
                padding: padding,
              ),
        );
      case ExIconTextButtonType.elevated:
      default:
        return ElevatedButton.icon(
          key: key,
          onPressed: isLoading ? null : onPressed,
          icon: iconWidget ?? icon_,
          label: isLoading
              ? const ExLoadingIndicator()
              : textWidget ??
                  ExButtonText(
                    text: text ?? "",
                    style: textStyle,
                    enabled: enabled,
                  ),
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          style: buttonStyle ??
              ExButtonStyle.elevatedButtonStyle(
                context: context,
                activeColor: activeColor,
                padding: padding,
              ),
        );
    }
  }
}
