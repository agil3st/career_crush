import 'package:career_crush/src/presentation/pages/job_detail/components/job_company_logo.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_description.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_qualification.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_summary.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_tabs.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/page_scaffold.dart';
import 'package:flutter/material.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Job Detail',
      body: Stack(
        children: [
          Scrollbar(
            interactive: true,
            thickness: 8,
            radius: const Radius.circular(10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  JobCompanyLogo(),
                  JobTabs(),
                  JobSummary(),
                  JobDescription(),
                  JobQualification()
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: FullButton(
                  onPressed: () {},
                  label: 'Apply Now',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
