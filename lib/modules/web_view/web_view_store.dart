import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:foodqueen/modules/home_screen/widgets/home_bottom_sheet/bottomsheet.dart';
import 'package:foodqueen/services/secure_storage.dart';
import 'package:foodqueen/values/enumeration.dart';
import 'package:mobx/mobx.dart';

part 'web_view_store.g.dart';

class WebViewStore = _WebViewStore with _$WebViewStore;

abstract class _WebViewStore with Store {
  _WebViewStore() {
    initialize();
  }

  @observable
  bool isPageLoad = true;

  @observable
  late InAppWebViewController webViewController;

  @observable
  String link = '';

  @observable
  TextEditingController ipAddress = TextEditingController();

  @observable
  String? ipAddressError;

  Future<void> initialize() async {
    final ipaddress =
        await SecureStorage.getValue(key: SecureStorageKeys.ipaddress);
    link = 'Http://192.168.${ipaddress}:8500';
  }

  Future<void> onErrorOccured(
      int code, String message, BuildContext context) async {
    if (code == -8) {
      ipAddress.text='';
      isPageLoad = true;
      showModalBottomSheet(
          enableDrag: false,
          isDismissible: false,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Observer(
              builder: (context) {
                return BottomSheetHome(
                  textcontroller: ipAddress,
                  onPressed: () => checkIpAddress(context),
                  errorText: ipAddressError,
                );
              },
            );
          });
    }
  }

  Future<void> checkIpAddress(BuildContext context) async {
    ipAddressError = null;
    var ipaddress = ipAddress.text;
    isPageLoad = true;
    SecureStorage.setValue(
      key: SecureStorageKeys.ipaddress,
      value: ipaddress.trim(),
    );

    link = 'Http://192.168.${ipaddress}:8500';
    Navigator.of(context).pop();
    webViewController.loadUrl(urlRequest: URLRequest(url: WebUri(link)));
  }
}
