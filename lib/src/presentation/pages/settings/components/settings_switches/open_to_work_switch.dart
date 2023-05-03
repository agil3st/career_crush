import 'package:career_crush/src/presentation/widgets/buttons/setting_button_toggle_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final toggleProvider = StateProvider<bool>((ref) => false);

class OpenToWorkSwitch extends ConsumerWidget {
  const OpenToWorkSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleValue = ref.read(toggleProvider.notifier);
    return SettingButtonToggleIcon(
      label: 'Open to Work',
      icon: FeatherIcons.briefcase,
      active: ref.watch(toggleProvider),
      onTap: () {
        toggleValue.state = !toggleValue.state;
      },
    );
  }
}
