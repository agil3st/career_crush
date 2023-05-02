import 'package:career_crush/src/presentation/widgets/buttons/setting_button_icon.dart';
import 'package:career_crush/src/presentation/widgets/buttons/setting_button_toggle_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettingButtonToggleIcon(
          label: 'Open to Work',
          icon: FeatherIcons.briefcase,
          active: true,
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonToggleIcon(
          label: 'New Job Alert Notification',
          icon: FeatherIcons.bell,
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonToggleIcon(
          label: 'Email Notification',
          icon: FeatherIcons.mail,
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SettingButtonToggleIcon(
          label: 'Activities Notification',
          icon: FeatherIcons.activity,
          active: true,
          onTap: () {},
        ),
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
