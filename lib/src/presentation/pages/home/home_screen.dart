import 'package:career_crush/src/presentation/pages/home/articles.dart';
import 'package:career_crush/src/presentation/pages/home/featured_jobs.dart';
import 'package:career_crush/src/presentation/pages/home/greeting.dart';
import 'package:career_crush/src/presentation/pages/home/recent_jobs.dart';
import 'package:career_crush/src/presentation/pages/home/recommended_jobs.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      padding: EdgeInsets.zero,
      showSettingsButton: true,
      showFooter: false,
      body: ListView(
        padding:
            const EdgeInsets.only(bottom: Constants.bottomListPaddingValue),
        children: const [
          Greeting(),
          Articles(),
          SizedBox(height: 30),
          FeaturedJobs(),
          SizedBox(height: 30),
          RecommendedJobs(),
          SizedBox(height: 30),
          RecentJobs(),
        ],
      ),
    );
  }
}
