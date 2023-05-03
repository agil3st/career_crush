import 'package:career_crush/src/presentation/pages/settings/components/settings_switches/activities_notification_switch.dart';
import 'package:career_crush/src/presentation/pages/settings/components/settings_switches/email_notification_switch.dart';
import 'package:career_crush/src/presentation/pages/settings/components/settings_switches/new_job_switch.dart';
import 'package:career_crush/src/presentation/pages/settings/components/settings_switches/open_to_work_switch.dart';
import 'package:career_crush/src/presentation/widgets/buttons/setting_button_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'Delete Account',
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'Privacy Policy',
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonIcon(
          label: 'Terms & Conditions',
          onTap: () {},
        ),
      ],
    );
  }
}
