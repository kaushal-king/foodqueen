// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenStore on _HomeScreenStore, Store {
  late final _$ipAddressAtom =
      Atom(name: '_HomeScreenStore.ipAddress', context: context);

  @override
  material.TextEditingController get ipAddress {
    _$ipAddressAtom.reportRead();
    return super.ipAddress;
  }

  @override
  set ipAddress(material.TextEditingController value) {
    _$ipAddressAtom.reportWrite(value, super.ipAddress, () {
      super.ipAddress = value;
    });
  }

  late final _$ipAddressErrorAtom =
      Atom(name: '_HomeScreenStore.ipAddressError', context: context);

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
ipAddress: ${ipAddress},
ipAddressError: ${ipAddressError}
    ''';
  }
}
