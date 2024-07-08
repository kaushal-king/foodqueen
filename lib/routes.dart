import 'package:flutter/material.dart';
import 'package:foodqueen/modules/home_screen/home_screen.dart';
import 'package:foodqueen/modules/home_screen/home_screen_store.dart';
import 'package:foodqueen/modules/splash_screen/splash_screen.dart';
import 'package:foodqueen/modules/splash_screen/splash_screen_store.dart';
import 'package:foodqueen/modules/web_view/web_view.dart';
import 'package:foodqueen/utils/common_widgets/invalid_route.dart';
import 'package:foodqueen/utils/extensions.dart';
import 'package:foodqueen/utils/helpers/helpers.dart';
import 'package:foodqueen/values/strings.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Route<dynamic> getRoute({
      required Widget widget,
      bool fullscreenDialog = false,
    }) {
      return MaterialPageRoute<void>(
        builder: (context) {
          setSystemUiOverlayStyle(brightness: context.theme.brightness);
          return widget;
        },
        settings: settings,
        fullscreenDialog: fullscreenDialog,
      );
    }

    final route = AppRoutes.getRoute(settings.name);
    switch (route) {
      case AppRoutes.initial:
        return getRoute(
          widget: const SplashScreen().withProvider(
            SplashScreenStore(),
          ),
        );

      case AppRoutes.homeScreen:
        return getRoute(
          widget: const HomeScreen().withProvider(
            HomeScreenStore(),
          ),
        );
      case AppRoutes.webview:
        return getRoute(widget:  WebView());
/*
      case AppRoutes.login:
        return getRoute(
          widget: const LoginScreen().withProvider(
            LoginStore(AuthenticationRepository.instance),
          ),
        );


      case AppRoutes.homeScreen:
        return getRoute(
          widget: const HomeScreen().withProvider(
            HomeScreenStore(),
          ),
        );*/

      case AppRoutes.invalidRoute:
        return getRoute(widget: const InvalidRoute());
    }
  }
}
