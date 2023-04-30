import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String label;
  final double size;
  final Color? color;
  final Color? labelColor;
  final GestureTapCallback? onTap;
  const SmallButton({
    super.key,
    required this.label,
    this.size = 80,
    this.color,
    this.labelColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              color: labelColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
