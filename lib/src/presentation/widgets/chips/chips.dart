import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/buttons/small_button.dart';
import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  final int selectedIndex;
  final List<String> values;
  const Chips({super.key, this.selectedIndex = -1, required this.values});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        runAlignment: WrapAlignment.start,
        runSpacing: 10,
        spacing: 10,
        children: values
            .map(
              (e) => SmallButton(
                label: e,
                fontSize: 12,
                horizontalPadding: 14,
                verticalPadding: 6,
                color: selectedIndex > 0 && values[selectedIndex] == e
                    ? ColorName.lavender
                    : ColorName.jasmine,
                labelColor: selectedIndex > 0 && values[selectedIndex] == e
                    ? ColorName.jasmine
                    : ColorName.midnight,
              ),
            )
            .toList(),
      ),
    );
  }
}
