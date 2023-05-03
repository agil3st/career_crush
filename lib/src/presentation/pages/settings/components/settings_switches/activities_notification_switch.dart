import 'package:career_crush/src/presentation/widgets/buttons/setting_button_toggle_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activitiesProvider = StateProvider<bool>((ref) => false);

class ActivitiesNotificationSwitch extends ConsumerWidget {
  const ActivitiesNotificationSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final switchProvider = ref.read(activitiesProvider.notifier);
    return SettingButtonToggleIcon(
      label: 'Activities Notification',
      icon: FeatherIcons.activity,
      active: ref.watch(activitiesProvider),
      onTap: () {
        switchProvider.state = !switchProvider.state;
      },
    );
  }
}
