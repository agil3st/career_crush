import 'package:career_crush/src/presentation/widgets/dialogs/confirm_dialog.dart';
import 'package:flutter/material.dart';

class OpenLinkConfirmDialog extends ConfirmDialog {
  OpenLinkConfirmDialog({
    super.key,
    required super.title,
    required super.description,
    required String url,
    super.onTap,
  }) : super(
          caption: Text(
            url,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Colors.blueAccent,
              decoration: TextDecoration.underline,
            ),
          ),
        );
}
