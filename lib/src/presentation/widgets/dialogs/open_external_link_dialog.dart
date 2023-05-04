import 'package:career_crush/src/presentation/widgets/dialogs/confirm_dialog.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void openExternalLink(String url) {
  SmartDialog.show(
    builder: (context) => ConfirmDialog(
      title: 'Open Link',
      description: 'Continue open this link to external browser?',
      onTap: () {},
    ),
  );
}
