import 'package:career_crush/src/presentation/widgets/buttons/setting_button_toggle_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newJobSwitchProvider = StateProvider<bool>((ref) => false);

class NewJobSwitch extends ConsumerWidget {
  const NewJobSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleValue = ref.read(newJobSwitchProvider.notifier);
    return SettingButtonToggleIcon(
      label: 'New Job Alert Notification',
      icon: FeatherIcons.bell,
      active: ref.watch(newJobSwitchProvider),
      onTap: () {
        toggleValue.state = !toggleValue.state;
      },
    );
  }
}
