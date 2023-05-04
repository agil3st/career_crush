import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class FullOutlinedButton extends OutlinedButton {
  FullOutlinedButton({
    super.key,
    required super.onPressed,
    required String label,
    EdgeInsets? padding,
    Color? color,
    Widget? text,
    bool isLoading = false,
    double fontSize = 18,
  }) : super(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            side: MaterialStatePropertyAll(
              BorderSide(
                color: color ?? ColorName.lavender,
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(
              color ?? Colors.white,
            ),
            padding: MaterialStatePropertyAll<EdgeInsets>(
              padding ?? const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
          child: isLoading
              ? Padding(
                  padding: const EdgeInsets.all(5.6),
                  child: SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      color: color ?? ColorName.lavender,
                      strokeWidth: 2,
                    ),
                  ),
                )
              : text ??
                  Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize,
                    ),
                  ),
        );
}
