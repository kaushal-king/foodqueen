import 'package:flutter/material.dart';
import 'package:foodqueen/gen/fonts.gen.dart';
import 'package:foodqueen/utils/extensions.dart';
import 'package:foodqueen/values/app_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.labelText,
    this.onPressed,
    this.showProgress = false,
  });

  final String labelText;
  final VoidCallback? onPressed;
  final bool showProgress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.colorPrimary,
            AppColors.colorPrimaryShadeTwo,
          ],
        ),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: ElevatedButton(
        clipBehavior: Clip.hardEdge,
        style: ElevatedButton.styleFrom(
          foregroundColor: context.theme.colorScheme.background,
          padding: const EdgeInsets.all(0.0),
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        onPressed: !showProgress ? onPressed : () {},
        child: showProgress
            ? SizedBox.square(
                dimension: 34,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: CircularProgressIndicator(
                    color: context.theme.colorScheme.onPrimary,
                  ),
                ),
              )
            : Container(
                padding: const EdgeInsets.all(16),
                child: Text(
                  labelText,
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.labelMedium?.copyWith(
                    color: context.theme.colorScheme.background,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.labelText,
    this.onPressed,
    this.showProgress = false,
  });

  final String labelText;
  final VoidCallback? onPressed;
  final bool showProgress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      clipBehavior: Clip.hardEdge,
      style: ElevatedButton.styleFrom(
        foregroundColor: context.theme.colorScheme.onPrimary,
        backgroundColor: context.theme.colorScheme.primary,
        surfaceTintColor: context.theme.colorScheme.onPrimary,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      onPressed: !showProgress ? onPressed : () {},
      child: showProgress
          ? SizedBox.square(
              dimension: 34,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: CircularProgressIndicator(
                  color: context.theme.colorScheme.onPrimary,
                ),
              ),
            )
          : Text(
              labelText,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.labelMedium?.copyWith(
                color: context.theme.colorScheme.background,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: FontFamily.adobeClean
              ),
            ),
    );
  }
}
