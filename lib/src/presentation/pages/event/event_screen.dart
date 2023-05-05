import 'package:career_crush/src/presentation/pages/event/components/event_list.dart';
import 'package:career_crush/src/presentation/pages/event/components/search_bar.dart';
import 'package:career_crush/src/presentation/pages/event/components/search_buttton.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventScreen extends ConsumerWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final showSearchBar = ref.watch(searchButtonProvider);
    return WelcomeScaffold(
      showFooter: false,
      padding: EdgeInsets.zero,
      actions: const [SearchButton()],
      bottomAppBar: showSearchBar ? SearchBar(autoFocus: showSearchBar) : null,
      body: const EventList(),
    );
  }
}
