import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:logging/logging.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

/// allows to set system icon theme (light | dark)
/// for Status Bar and Navigation Bar
SystemUiOverlayStyle setSystemUiOverlayStyle({required Brightness brightness}) {
  brightness =
      brightness == Brightness.dark ? Brightness.light : Brightness.dark;
  final style = SystemUiOverlayStyle(
    systemNavigationBarColor:
        brightness == Brightness.dark ? Colors.white : Colors.black,
    systemNavigationBarIconBrightness: brightness,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: brightness,
    statusBarBrightness: brightness,
  );
  SystemChrome.setSystemUIOverlayStyle(
    style,
  );
  return style;
}

void setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {});
}

void setAppOrientation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

String enumToString(Object o) => o.toString().split('.').last;

T enumFromString<T>(String key, List<T> values) =>
    values.firstWhere((v) => key == enumToString(v!));




Future<void> redirectAppStore() async {
  final packageInfo = await PackageInfo.fromPlatform();
  if (Platform.isAndroid || Platform.isIOS) {
    final appId = packageInfo.packageName;
    final url = Uri.parse(
      Platform.isAndroid
          ? "market://details?id=$appId"
          : "https://apps.apple.com/app/id$appId",
    );
    launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }
}

void openDialPad(String phoneNumber) async {
  Uri url = Uri(scheme: "tel", path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    debugPrint("Can't open dial pad.");
  }
}
