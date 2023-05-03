import 'package:career_crush/src/presentation/widgets/buttons/setting_button_toggle_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailNotificationProvider = StateProvider<bool>((ref) => false);

class EmailNotificationSwitch extends ConsumerWidget {
  const EmailNotificationSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final switchProvider = ref.read(emailNotificationProvider.notifier);
    return SettingButtonToggleIcon(
      label: 'Email Notification',
      icon: FeatherIcons.mail,
      active: ref.watch(emailNotificationProvider),
      onTap: () {
        switchProvider.state = !switchProvider.state;
      },
    );
  }
}
