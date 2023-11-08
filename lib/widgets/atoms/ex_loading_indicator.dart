import 'package:flutter/material.dart';

class ExLoadingIndicator extends StatelessWidget {
  final double size;
  final Color? color;

  const ExLoadingIndicator({
    Key? key,
    this.size = 15,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        strokeWidth: 3,
        valueColor: AlwaysStoppedAnimation<Color>(color ?? Colors.white),
      ),
    );
  }
}
