import 'package:flutter/material.dart';
import 'package:foodqueen/utils/extensions.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.textAlign,
    this.textStyle,
    this.fullTextStyle,
    this.maxLines,
  });

  final String text;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final TextStyle? fullTextStyle;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: fullTextStyle ??
          textStyle?.copyWith(
            color: context.theme.colorScheme.background,
          ) ??
          context.theme.textTheme.headlineSmall?.copyWith(
            color: context.theme.colorScheme.background,
          ),
    );
  }
}

class AppTextLight extends StatelessWidget {
  const AppTextLight(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.labelMedium?.copyWith(
        color: context.theme.colorScheme.onSurface,
      ),
    );
  }
}

class MobileText extends StatelessWidget {
  const MobileText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.labelMedium?.copyWith(
        color: Colors.blue,
      ),
    );
  }
}
