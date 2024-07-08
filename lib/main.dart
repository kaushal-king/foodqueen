import 'package:flutter/material.dart';
import 'package:foodqueen/services/shared_prefs.dart';
import 'package:foodqueen/utils/helpers/helpers.dart';
import 'app_config.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.initialise();
  setAppOrientation();
  setupLogging();
/*  await LocalNotificationService.instance.init();
  await setupFirebase();*/
  runApp(const _FlavoredApp());
}

class _FlavoredApp extends StatelessWidget {
  const _FlavoredApp();

  @override
  Widget build(BuildContext context) {
    return const AppConfig();
  }
}
