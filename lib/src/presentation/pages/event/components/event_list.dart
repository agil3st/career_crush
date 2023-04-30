import 'package:career_crush/src/presentation/pages/event/components/event_card.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 80),
      itemBuilder: (context, index) => const EventCard(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 10,
    );
  }
}
