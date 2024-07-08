import 'package:foodqueen/modules/splash_screen/splash_screen_repositoy.dart';
import 'package:mobx/mobx.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'splash_screen_store.g.dart';

class SplashScreenStore = _SplashScreenStore with _$SplashScreenStore;

abstract class _SplashScreenStore with Store {
  _SplashScreenStore() {
    initialize();
  }

  @observable
  PackageInfo? packageInfo;

  Future<void> initialize() async {
    packageInfo = await PackageInfo.fromPlatform();
  }

  Future<bool> checkVersion() async {
    if (packageInfo == null) {
      await initialize();
    }
    return  true;
  }
}
