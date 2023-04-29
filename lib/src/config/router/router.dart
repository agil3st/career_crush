import 'package:career_crush/gen/assets.gen.dart';
import 'package:career_crush/src/domain/models/route/route.dart';
import 'package:career_crush/src/presentation/pages/applications/application_screen.dart';
import 'package:career_crush/src/presentation/pages/auth/forgot_password/forgot_password_screen.dart';
import 'package:career_crush/src/presentation/pages/auth/sign_in/sign_in_screen.dart';
import 'package:career_crush/src/presentation/pages/auth/sign_up/sign_up_screen.dart';
import 'package:career_crush/src/presentation/pages/event/event_screen.dart';
import 'package:career_crush/src/presentation/pages/explore/explore_screen.dart';
import 'package:career_crush/src/presentation/pages/home/home_screen.dart';
import 'package:career_crush/src/presentation/pages/index/index_screen.dart';
import 'package:career_crush/src/presentation/pages/on_boarding/on_boarding_screen.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: Routes.onBoarding,
    routes: [
      GoRoute(
        path: Routes.onBoarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: Routes.signIn,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: Routes.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: Routes.forgotPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: Routes.index,
        builder: (context, state) => const IndexScreen(),
      ),
    ],
  );

  static List<AppRoute> bottomNav = [
    AppRoute(
        label: Routes.homeLabel,
        path: Routes.index,
        icon: Assets.images.icons.apps.home.path,
        screen: const HomeScreen()),
    AppRoute(
        label: Routes.exploreLabel,
        path: Routes.explore,
        icon: Assets.images.icons.apps.search.path,
        screen: const ExploreScreen()),
    AppRoute(
        label: Routes.applicationsLabel,
        path: Routes.applications,
        icon: Assets.images.icons.apps.document.path,
        screen: const ApplicationsScreen()),
    AppRoute(
        label: Routes.eventLabel,
        path: Routes.event,
        icon: Assets.images.icons.apps.calender.path,
        screen: const EventScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> build() {
    return {for (var route in bottomNav) route.path: (_) => route.screen};
  }
}
