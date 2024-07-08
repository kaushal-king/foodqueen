import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/material.dart' as material;
import 'package:foodqueen/app.dart';
import 'package:foodqueen/utils/extensions.dart';
import 'package:foodqueen/values/strings.dart';
import 'package:mobx/mobx.dart';

part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStore with _$HomeScreenStore;

abstract class _HomeScreenStore with Store {
  _HomeScreenStore() {
  }


  @observable
  material.TextEditingController ipAddress =
  material.TextEditingController();


  @observable
  String? ipAddressError;


  Future<void> checkIpAddress() async {
    ipAddressError = null;
    var ipaddress = ipAddress.text;
    var isValidIPaddress= await Ping ('${ipaddress}:8500', count: 1).stream.first;
    if(isValidIPaddress.error != null){
      ipAddressError='wrong Ip Address';
      }else{
      navigator.pushReplacementNamed(
        AppRoutes.webview.routeName,
        arguments:{'link': '${ipaddress}:8500'},
      );
    }
  }



}
