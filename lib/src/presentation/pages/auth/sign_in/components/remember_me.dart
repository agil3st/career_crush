import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rememberProvider = StateProvider<bool>((ref) => false);

class RememberMe extends ConsumerWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rememberMe = ref.read(rememberProvider.notifier);

    return InkWell(
      onTap: () => rememberMe.state = !rememberMe.state,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              rememberMe.state = !rememberMe.state;
            },
            constraints: const BoxConstraints(),
            padding: EdgeInsets.zero,
            icon: Icon(
              ref.watch(rememberProvider)
                  ? FeatherIcons.checkSquare
                  : FeatherIcons.square,
              size: 16,
            ),
          ),
          const SizedBox(width: 2),
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: Text(
              'Remember me',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
