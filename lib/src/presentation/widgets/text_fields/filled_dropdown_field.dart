import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class FilledDropdownField extends StatelessWidget {
  final String label;
  final String hint;
  final Map<String, String> options;
  const FilledDropdownField({
    super.key,
    required this.label,
    required this.hint,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Text(
            label,
            style: const TextStyle(
              color: ColorName.lavender,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: ColorName.jasmine,
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton<String>(
            value: '1',
            isExpanded: true,
            icon: const Icon(
              FeatherIcons.chevronDown,
              size: 14,
            ),
            underline: Container(),
            borderRadius: BorderRadius.circular(10),
            items: options.entries
                .map(
                  (e) => DropdownMenuItem(
                    value: e.key,
                    child: Text(
                      e.value,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
