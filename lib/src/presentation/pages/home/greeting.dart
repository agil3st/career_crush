import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/avatar/avatar.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hello, Gwen',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'We bring the best for you',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorName.lavender,
                ),
              ),
            ],
          ),
          InkWell(
            child: const Avatar(
              id: 5,
            ),
            onTap: () => context.push(Routes.profile),
          )
        ],
      ),
    );
  }
}
