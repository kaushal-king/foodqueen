import 'package:flutter/material.dart';
import 'package:foodqueen/utils/extensions.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: context.theme.colorScheme.onSurface,
    );
  }
}
