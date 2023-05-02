import 'package:career_crush/src/presentation/pages/profile/components/profile_about.dart';
import 'package:career_crush/src/presentation/pages/profile/components/profile_card.dart';
import 'package:career_crush/src/presentation/pages/profile/components/profile_stats.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/page_scaffold.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'My Profile',
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        children: const [
          ProfileCard(),
          SizedBox(height: 20),
          ProfileStats(),
          SizedBox(height: 20),
          ProfileAbout(),
        ],
      ),
    );
  }
}
