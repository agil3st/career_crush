import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchButtonProvider = StateProvider<bool>((ref) => false);

class SearchButton extends ConsumerWidget {
  const SearchButton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchButton = ref.read(searchButtonProvider.notifier);
    return IconButton(
      onPressed: () => searchButton.state = !searchButton.state,
      icon: Icon(
        FeatherIcons.search,
        color: ref.watch(searchButtonProvider)
            ? ColorName.lavender
            : ColorName.midnight,
      ),
    );
  }
}
