import 'package:career_crush/src/presentation/pages/index/navbar.dart';
import 'package:career_crush/src/presentation/pages/index/page_view.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: PageViewConsumer(),
      bottomNavigationBar: NavBarConsumer(),
    );
  }
}
