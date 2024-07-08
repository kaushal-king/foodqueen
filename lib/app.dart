import 'package:flutter/material.dart';

import 'routes.dart';
import 'values/app_theme.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

NavigatorState get navigator => navigatorKey.currentState!;

class FoodQueenApp extends StatelessWidget {
  const FoodQueenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.instance.getLightTheme(),
      darkTheme: AppTheme.instance.getLightTheme(),
      onGenerateRoute: Routes.generateRoute,
      navigatorKey: navigatorKey,
    );
  }
}
