import 'package:energy/backend/app/app.router.dart';
import 'package:energy/frontend/shared/shared_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  runApp(const EnergyApp());
}

class EnergyApp extends StatelessWidget {
  const EnergyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Energy',
      theme: Themes.light,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
