import 'package:career_crush/src/presentation/pages/settings/components/settings_switches/activities_notification_switch.dart';
import 'package:career_crush/src/presentation/pages/settings/components/settings_switches/email_notification_switch.dart';
import 'package:career_crush/src/presentation/pages/settings/components/settings_switches/new_job_switch.dart';
import 'package:career_crush/src/presentation/pages/settings/components/settings_switches/open_to_work_switch.dart';
import 'package:career_crush/src/presentation/widgets/buttons/setting_button_icon.dart';
import 'package:career_crush/src/presentation/widgets/dialogs/confirm_dialog.dart';
import 'package:career_crush/src/presentation/widgets/dialogs/open_external_link_dialog.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';

class SettingsList extends ConsumerWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const OpenToWorkSwitch(),
        const SizedBox(height: 10),
        const NewJobSwitch(),
        const SizedBox(height: 10),
        const EmailNotificationSwitch(),
        const SizedBox(height: 10),
        const ActivitiesNotificationSwitch(),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'Edit Profile',
          icon: FeatherIcons.user,
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'About Us',
          icon: FeatherIcons.info,
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'Log Out',
          onTap: () => _logout(onSuccess: () => context.go(Routes.onBoarding)),
        ),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'Delete Account',
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'Privacy Policy',
          onTap: _openPrivacyPolicy,
        ),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'Terms of Services',
          onTap: _openTermsConditionButton,
        ),
      ],
    );
  }

  void _logout({required Function onSuccess}) {
    SmartDialog.show(
      animationTime: Constants.defaultDialogAnimationTime,
      builder: (context) => ConfirmDialog(
        title: 'Logout',
        description: 'Continue logout from this account?',
        onTap: () async {
          SmartDialog.dismiss();
          SmartDialog.showLoading(
            msg: 'Logging out...',
            clickMaskDismiss: false,
            backDismiss: false,
          );
          await Future.delayed(const Duration(seconds: 3));
          SmartDialog.dismiss();
          onSuccess();
          await Future.delayed(const Duration(seconds: 1));
          SmartDialog.showNotify(
            msg: 'Logout success!',
            notifyType: NotifyType.success,
          );
        },
      ),
    );
  }

  void _openPrivacyPolicy() {
    openExternalLink('https://www.careercrush.com/privacy-policy/');
  }

  void _openTermsConditionButton() {
    openExternalLink('https://www.careercrush.com/terms-of-services/');
  }
}
