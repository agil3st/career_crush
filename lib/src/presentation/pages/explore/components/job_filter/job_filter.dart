import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/chips/labeled_chips.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/page_scaffold.dart';
import 'package:career_crush/src/presentation/widgets/text_fields/filled_dropdown_field.dart';
import 'package:career_crush/src/presentation/widgets/text_fields/filled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class JobFilter extends StatelessWidget {
  const JobFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryOptions = {
      '1': 'Option 1',
      '2': 'Option 2',
      '3': 'Option 3',
      '4': 'Option 4',
    };

    final salaryOptions = {
      '1': '1jt - 3jt',
      '2': '3jt - 6jt',
      '3': '6jt - 8jt',
      '4': '8jt or more',
    };

    final experienceOptions = {
      '1': '0 Tahun (Tanpa Pengalaman)',
      '2': '1 - 2 Tahun (Entry Level)',
      '3': '2 - 3 Tahun (Mid Level)',
      '4': '3+ Tahun (Senior/Supervisor Level)',
      '5': '5+ Tahun (Manager Level)',
      '6': '10+ Tahun (Director Level)',
    };

    final jobTypeOptions = [
      'Full Time',
      'Part Time',
      'Freelance',
      'Internship',
    ];

    final jobBaseOptions = [
      'Remote (WFA/WFH)',
      'On-Site (WFO)',
    ];

    final jobDurationOptions = [
      'Permanent',
      'Contract',
    ];

    final weeklyDurationOptions = [
      '8 Jam / 5 Hari',
      '7 Jam / 6 Hari',
    ];

    final educationOption = [
      'SMA/SMK',
      'D3',
      'D4',
      'S1',
      'S2',
      'S3',
    ];

    final companySize = [
      '1-10',
      '11-50',
      '51-100',
      '100-1.000',
      '1.000-5.000',
      '5.000+',
      '10.000+',
    ];

    final sortOptions = {
      '1': 'Paling Relevan',
      '2': 'Deadline Terdekat',
      '3': 'Terbaru',
      '4': 'Terlama',
    };

    return PageScaffold(
      title: 'Job Filter',
      centerTitle: true,
      hideBackButton: true,
      actions: [
        IconButton(
          icon: const Icon(FeatherIcons.x),
          onPressed: () => context.pop(),
        )
      ],
      body: Stack(
        children: [
          Scrollbar(
            radius: const Radius.circular(20),
            thickness: 6,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 150),
              children: [
                FilledDropdownField(
                  label: 'Sort',
                  hint: 'Sort by',
                  options: sortOptions,
                ),
                const SizedBox(height: 20),
                const FilledTextField(
                  label: 'Location',
                  hint: 'Search location',
                ),
                const SizedBox(height: 20),
                FilledDropdownField(
                  label: 'Category',
                  hint: 'Choose category',
                  options: categoryOptions,
                ),
                const SizedBox(height: 20),
                FilledDropdownField(
                  label: 'Experience',
                  hint: 'Choose experience level',
                  options: experienceOptions,
                ),
                const SizedBox(height: 20),
                FilledDropdownField(
                  label: 'Salary',
                  hint: 'Choose salary range',
                  options: salaryOptions,
                ),
                const SizedBox(height: 20),
                LabeledChips(
                  label: 'Latest Education',
                  values: educationOption,
                ),
                const SizedBox(height: 20),
                LabeledChips(
                  label: 'Job Type',
                  values: jobTypeOptions,
                ),
                const SizedBox(height: 20),
                LabeledChips(
                  label: 'Placement',
                  values: jobBaseOptions,
                ),
                const SizedBox(height: 20),
                LabeledChips(
                  label: 'Duration',
                  values: jobDurationOptions,
                ),
                const SizedBox(height: 20),
                LabeledChips(
                  label: 'Work Hours Duration',
                  values: weeklyDurationOptions,
                ),
                const SizedBox(height: 20),
                LabeledChips(
                  label: 'Company Size',
                  values: companySize,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              color: Colors.white,
              child: FullButton(
                onPressed: () => context.pop(),
                label: 'Apply Filter',
              ),
            ),
          )
        ],
      ),
    );
  }
}
