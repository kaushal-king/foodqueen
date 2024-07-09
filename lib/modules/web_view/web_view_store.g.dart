// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_view_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WebViewStore on _WebViewStore, Store {
  late final _$isPageLoadAtom =
      Atom(name: '_WebViewStore.isPageLoad', context: context);

  @override
  bool get isPageLoad {
    _$isPageLoadAtom.reportRead();
    return super.isPageLoad;
  }

  @override
  set isPageLoad(bool value) {
    _$isPageLoadAtom.reportWrite(value, super.isPageLoad, () {
      super.isPageLoad = value;
    });
  }

  late final _$webViewControllerAtom =
      Atom(name: '_WebViewStore.webViewController', context: context);

  @override
  InAppWebViewController get webViewController {
    _$webViewControllerAtom.reportRead();
    return super.webViewController;
  }

  bool _webViewControllerIsInitialized = false;

  @override
  set webViewController(InAppWebViewController value) {
    _$webViewControllerAtom.reportWrite(
        value, _webViewControllerIsInitialized ? super.webViewController : null,
        () {
      super.webViewController = value;
      _webViewControllerIsInitialized = true;
    });
  }

  late final _$linkAtom = Atom(name: '_WebViewStore.link', context: context);

  @override
  String get link {
    _$linkAtom.reportRead();
    return super.link;
  }

  @override
  set link(String value) {
    _$linkAtom.reportWrite(value, super.link, () {
      super.link = value;
    });
  }

  late final _$ipAddressAtom =
      Atom(name: '_WebViewStore.ipAddress', context: context);

  @override
  TextEditingController get ipAddress {
    _$ipAddressAtom.reportRead();
    return super.ipAddress;
  }

  @override
  set ipAddress(TextEditingController value) {
    _$ipAddressAtom.reportWrite(value, super.ipAddress, () {
      super.ipAddress = value;
    });
  }

  late final _$ipAddressErrorAtom =
      Atom(name: '_WebViewStore.ipAddressError', context: context);

  @override
  String? get ipAddressError {
    _$ipAddressErrorAtom.reportRead();
    return super.ipAddressError;
  }

  @override
  set ipAddressError(String? value) {
    _$ipAddressErrorAtom.reportWrite(value, super.ipAddressError, () {
      super.ipAddressError = value;
    });
  }

  @override
  String toString() {
    return '''
isPageLoad: ${isPageLoad},
webViewController: ${webViewController},
link: ${link},
ipAddress: ${ipAddress},
ipAddressError: ${ipAddressError}
    ''';
  }
}
