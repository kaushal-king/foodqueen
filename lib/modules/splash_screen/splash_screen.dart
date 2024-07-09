import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:foodqueen/gen/assets.gen.dart';
import 'package:foodqueen/modules/splash_screen/splash_screen_store.dart';
import 'package:foodqueen/services/secure_storage.dart';
import 'package:foodqueen/utils/extensions.dart';
import 'package:foodqueen/values/app_colors.dart';
import 'package:foodqueen/values/enumeration.dart';
import 'package:foodqueen/values/strings.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final store = provide<SplashScreenStore>();

  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  Future<void> _loadWidget() async {


    final ipaddress =  await SecureStorage.getValue(key: SecureStorageKeys.ipaddress);
    if(ipaddress.isNullOrEmpty){
      SecureStorage.setValue(
        key: SecureStorageKeys.ipaddress,
        value: '1.168',
      );
    }

/*    final accessToken =  await SecureStorage.getValue(key: SecureStorageKeys.kAccessToken);
    final isLoggedIn = accessToken?.isNotNullAndNotEmpty;*/

    // This will remove splash screen after 3 seconds and push next screen.
    Timer(
      const Duration(seconds: 1),
      () => navigationPage(
         AppRoutes.webview.routeName ,
      ),
    );
  }

  Future<void> navigationPage(String routeName) async =>
      context.pushReplacementNamed<void, void>(routeName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: AppColors.colorSplashBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox.square(
                      dimension: context.screenSize.width,
                      child: Assets.images.logoFoodqueen.image(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
