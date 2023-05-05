import 'package:career_crush/src/presentation/widgets/dialogs/open_link_confirm_dialog.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void openExternalLink(String url) {
  SmartDialog.show(
    builder: (context) => OpenLinkConfirmDialog(
      title: 'Open Link',
      description: 'Open this link on external browser?',
      url: url,
      onTap: () {},
    ),
  );
}
