import 'package:career_crush/src/domain/models/event/career_event.dart';
import 'package:career_crush/src/presentation/pages/event/components/event_card.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding:
          const EdgeInsets.fromLTRB(20, 20, 20, Constants.bottomListPadding),
      itemBuilder: (context, index) =>
          EventCard(careerEvent: CareerEvent.events[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: CareerEvent.events.length,
    );
  }
}
