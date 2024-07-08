import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:foodqueen/app.dart';
import 'package:foodqueen/gen/assets.gen.dart';
import 'package:foodqueen/modules/home_screen/home_screen_store.dart';
import 'package:foodqueen/modules/home_screen/widgets/home_bottom_sheet/bottomsheet.dart';
import 'package:foodqueen/utils/extensions.dart';
import 'package:foodqueen/values/app_colors.dart';
import 'package:foodqueen/values/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadWidget();
  }

  Future<void> _loadWidget() async {
    if (mounted) {
      final store = context.provide<HomeScreenStore>();

      final result = await Ping('localhost:8085', count: 1).stream.first;

      if (result.error != null) {
        showModalBottomSheet(
            enableDrag: false,
            context: context,
            builder: (context) {
              return Observer(
                builder: (context) {
                  return BottomSheetHome(
                    textcontroller: store.ipAddress,
                    onPressed: store.checkIpAddress,
                    errorText: store.ipAddressError,
                  );
                },
              );
            });
      } else {
        navigator.pushReplacementNamed(
          AppRoutes.webview.routeName,
          arguments:{'link': 'localhost:8085'},
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorSplashBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox.square(
            dimension: context.screenSize.width,
            child: Assets.images.logoFoodqueen.image(),
          ),
        ],
      ),
    );
  }
}
