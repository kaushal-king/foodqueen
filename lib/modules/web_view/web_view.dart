import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:foodqueen/gen/assets.gen.dart';
import 'package:foodqueen/modules/web_view/web_view_store.dart';
import 'package:foodqueen/utils/extensions.dart';
import 'package:foodqueen/values/app_colors.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    late final store = context.provide<WebViewStore>();
    return Scaffold(
      backgroundColor: AppColors.colorSplashBackground,
      body: SafeArea(
        child: Observer(
          builder: (context) {
            return Stack(
              children: [
                store.link.isNullOrEmpty
                    ? Container()
                    : InAppWebView(
                        initialUrlRequest: URLRequest(url: WebUri(store.link)),
                        onWebViewCreated: (InAppWebViewController controller) {
                          store.webViewController = controller;
                        },
                        onLoadStart:
                            (InAppWebViewController controller, WebUri? url) {
                          store.isPageLoad = true;
                        },
                        onLoadStop:
                            (InAppWebViewController controller, WebUri? url) {
                          store.isPageLoad = false;
                        },
                        onLoadError: (InAppWebViewController controller,
                            Uri? url, int code, String message) {
                          store.isPageLoad = true;
                          store.onErrorOccured(code, message, context);
                        },
                        onProgressChanged: (InAppWebViewController controller,
                            int progress) {},
                      ),
                store.isPageLoad
                    ? Container(
                  color:  AppColors.colorSplashBackground,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox.square(
                              dimension: context.screenSize.width,
                              child: Assets.images.logoFoodqueen.image(),
                            ),
                          ],
                        ),
                    )
                    : const Stack()
              ],
            );
          },
        ),
      ),
    );
  }
}
