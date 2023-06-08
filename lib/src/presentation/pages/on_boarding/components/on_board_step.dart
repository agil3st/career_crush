import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'on_board_title.dart';

class OnBoardStep extends StatelessWidget {
  final SvgPicture illustration;
  final String title;
  final String description;
  const OnBoardStep({
    super.key,
    required this.illustration,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      padding: Constants.onBoardHorizontalPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              alignment: Alignment.center,
              child: illustration,
            ),
          ),
          SizedBox(height: 10),
          FittedBox(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
            ),
          ),
          const SizedBox(height: 14),
          Flexible(
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
