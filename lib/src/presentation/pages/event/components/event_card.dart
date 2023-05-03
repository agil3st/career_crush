import 'package:cached_network_image/cached_network_image.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/domain/models/event/career_event.dart';
import 'package:career_crush/src/presentation/pages/event/components/event_date.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_location.dart';
import 'package:career_crush/src/presentation/widgets/buttons/small_button.dart';
import 'package:career_crush/src/presentation/widgets/shimmers/shimmer_square.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final CareerEvent careerEvent;
  const EventCard({super.key, required this.careerEvent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 0,
            color: Colors.black12,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: careerEvent.imageURL,
            imageBuilder: (context, imageProvider) => Container(
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  )),
            ),
            placeholder: (context, url) => const ShimmerSquare(size: 120),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      careerEvent.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorName.midnight,
                      ),
                    ),
                    const SizedBox(height: 2),
                    JobLocation(location: careerEvent.location.place),
                    const SizedBox(height: 2),
                    EventDate(date: careerEvent.dateHumanReadable),
                  ],
                ),
                const SmallButton(
                  label: 'Join Event',
                  color: ColorName.lavender,
                  size: 100,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
