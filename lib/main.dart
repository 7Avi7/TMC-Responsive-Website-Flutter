import 'package:flutter/material.dart';
import 'package:tmc_hss/locator.dart';

import 'ui/route_navigation.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TMC',
      initialRoute: RouteNavigation.homeView,
      onGenerateRoute: RouteNavigation.generateRoute,
    );
  }
}
