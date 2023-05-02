import 'package:career_crush/src/presentation/pages/settings/components/app_version.dart';
import 'package:career_crush/src/presentation/pages/settings/components/profile_tile.dart';
import 'package:career_crush/src/presentation/pages/settings/components/settings_list.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/page_scaffold.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Settings',
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
        children: const [
          ProfileTile(),
          SizedBox(height: 40),
          SettingsList(),
          SizedBox(height: 40),
          AppVersionInfo(),
        ],
      ),
    );
  }
}
