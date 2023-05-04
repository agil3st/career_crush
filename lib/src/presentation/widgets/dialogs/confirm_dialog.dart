import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ConfirmDialog extends StatelessWidget {
  final String title;
  final String description;
  final Function? onTap;
  const ConfirmDialog({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 34),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: FullOutlinedButton(
                  onPressed: SmartDialog.dismiss,
                  label: 'Cancel',
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: FullButton(
                  onPressed: () {
                    SmartDialog.dismiss();
                    // Logout
                    if (onTap != null) onTap!();
                  },
                  label: 'Yes',
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
