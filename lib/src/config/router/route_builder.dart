import 'package:flutter/material.dart';

class Route {
  final String label;
  final String path;
  final Widget screen;

  Route({required this.label, required this.path, required this.screen});
}

class RouteBuilder {
  static List<Route> routes = [
    /* Route(
        label: Routes.homeLabel, path: Routes.index, screen: const IndexPage()), */
  ];

  static List<Route> get routesNoScreen => routes
      .map((e) => Route(label: e.label, path: e.path, screen: const SizedBox()))
      .toList();

  static Map<String, Widget Function(BuildContext)> build() {
    return {for (var route in routes) route.path: (_) => route.screen};
  }
}
