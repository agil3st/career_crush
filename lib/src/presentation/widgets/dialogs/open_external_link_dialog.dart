import 'package:career_crush/src/presentation/widgets/dialogs/open_link_confirm_dialog.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void openExternalLink(String url) {
  SmartDialog.show(
    animationTime: Constants.defaultDialogAnimationTime,
    builder: (context) => OpenLinkConfirmDialog(
      title: 'Open Link',
      description: 'Open this link on external browser?',
      url: url,
      onTap: () {},
    ),
  );
}
