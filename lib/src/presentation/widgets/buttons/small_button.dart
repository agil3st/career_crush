import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String label;
  final double? size;
  final Color? color;
  final Color? labelColor;
  final GestureTapCallback? onTap;
  final TextStyle? textStyle;
  final double fontSize;
  final double horizontalPadding;
  final double verticalPadding;
  const SmallButton({
    super.key,
    required this.label,
    this.size,
    this.color,
    this.labelColor,
    this.onTap,
    this.textStyle,
    this.fontSize = 10,
    this.horizontalPadding = 10,
    this.verticalPadding = 3,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: textStyle ??
                TextStyle(
                  fontSize: fontSize,
                  color: labelColor ?? Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
