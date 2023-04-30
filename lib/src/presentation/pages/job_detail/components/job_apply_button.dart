import 'package:career_crush/src/presentation/view_models/navigation/page_controller_view_model.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class JobApplyButton extends ConsumerWidget {
  const JobApplyButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: FullButton(
          onPressed: () {
            context.go(Routes.index);
            ref.read(pageControllerProvider.notifier).animateToPage(2);
            ref.read(currentPageProvider.notifier).state = 2;
          },
          label: 'Apply Now',
        ),
      ),
    );
  }
}
