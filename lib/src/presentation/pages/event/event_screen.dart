import 'package:career_crush/src/presentation/pages/event/components/event_list.dart';
import 'package:career_crush/src/presentation/pages/event/components/search_bar.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      showFooter: false,
      padding: EdgeInsets.zero,
      actions: [
        IconButton(
          icon: const Icon(FeatherIcons.search),
          onPressed: () {},
        )
      ],
      bottomAppBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: SearchBar(),
        ),
      ),
      body: const EventList(),
    );
  }
}
