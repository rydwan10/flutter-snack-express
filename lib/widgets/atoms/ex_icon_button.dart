import 'package:flutter/material.dart';
import 'package:snack_express/utils/navigate.dart';
import 'package:snack_express/widgets/atoms/ex_loading_indicator.dart';

class ExIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onPressed;
  final bool isLoading;
  final double iconSize;
  final FocusNode? focusNode;
  final bool autofocus;
  final ButtonStyle? buttonStyle;
  final Color? color;
  final BoxConstraints? constraints;
  final EdgeInsets padding;
  final VisualDensity? visualDensity;
  final Alignment alignment;
  final Color? disabledColor;
  final bool enableFeedback;
  final Color? focusColor;
  final Color? highlightColor;
  final Color? hoverColor;
  final bool? isSelected;
  final MouseCursor? mouseCursor;
  final Widget? selectedIcon;
  final Color? splashColor;
  final double? splashRadius;
  final String? tooltip;

  const ExIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
    this.isLoading = false,
    this.iconSize = 24,
    this.focusNode,
    this.autofocus = false,
    this.buttonStyle,
    this.color,
    this.constraints,
    this.padding = const EdgeInsets.all(8.0),
    this.visualDensity,
    this.alignment = Alignment.center,
    this.disabledColor,
    this.enableFeedback = true,
    this.focusColor,
    this.highlightColor,
    this.hoverColor,
    this.isSelected,
    this.mouseCursor,
    this.selectedIcon,
    this.splashColor,
    this.splashRadius,
    this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: key,
      icon: isLoading ? ExLoadingIndicator() : icon,
      onPressed: isLoading ? null : onPressed,
      iconSize: iconSize,
      focusNode: focusNode,
      autofocus: autofocus,
      style: buttonStyle,
      color: color,
      constraints: constraints,
      padding: padding,
      visualDensity: visualDensity,
      alignment: alignment,
      disabledColor: disabledColor,
      enableFeedback: enableFeedback,
      focusColor: focusColor,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      isSelected: isSelected,
      mouseCursor: mouseCursor,
      selectedIcon: selectedIcon,
      splashColor: splashColor,
      splashRadius: splashRadius,
      tooltip: tooltip,
    );
  }

  factory ExIconButton.back({VoidCallback? onBack, Color? color}) {
    return ExIconButton(
      icon: Icon(
        Icons.arrow_back,
        color: color,
      ),
      onPressed: () {
        if (onBack != null) {
          onBack();
        } else {
          Navigate.back();
        }
      },
    );
  }

  factory ExIconButton.close({VoidCallback? onBack}) {
    return ExIconButton(
      icon: Icon(Icons.close),
      onPressed: () {
        onBack?.call();
        Navigate.back();
      },
    );
  }
}
