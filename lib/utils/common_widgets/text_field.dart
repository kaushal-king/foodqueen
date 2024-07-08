import 'package:flutter/material.dart';
import 'package:foodqueen/utils/extensions.dart';
import 'package:foodqueen/values/app_colors.dart';

class MobileNumberTextField extends StatelessWidget {
  const MobileNumberTextField({
    super.key,
    this.labelText,
    this.maxLength,
    this.errorText,
    this.controller,
  });

  final String? labelText;
  final String? errorText;
  final int? maxLength;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      maxLength: maxLength,
      controller: controller,
      keyboardType: TextInputType.phone,
      labelText: labelText,
      errorText: errorText,
      buildCounter: (context,
          {required currentLength, required isFocused, required maxLength}) {
        return Text(
          '$currentLength/$maxLength',
          style: context.theme.textTheme.labelSmall
              ?.copyWith(color: context.theme.colorScheme.onSurface),
        );
      },
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.labelText,
    this.errorText,
    this.controller,
    this.focusNode,
    this.undoController,
    this.decoration,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.statesController,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorOpacityAnimates,
    this.cursorColor,
    this.cursorErrorColor,
    this.keyboardAppearance,
    this.onTap,
    this.onTapAlwaysCalled = false,
    this.onTapOutside,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.contentInsertionConfiguration,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.scribbleEnabled = true,
    this.canRequestFocus = true,
    this.magnifierConfiguration,
    this.textDirection,
    this.buildCounter,
    this.contextMenuBuilder,
  });

  final String? labelText;
  final String? errorText;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool autofocus;
  final MaterialStatesController? statesController;
  final String obscuringCharacter;
  final bool obscureText;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  static const int noMaxLength = -1;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final bool? cursorOpacityAnimates;
  final Color? cursorColor;
  final Color? cursorErrorColor;
  final Brightness? keyboardAppearance;
  final GestureTapCallback? onTap;
  final bool onTapAlwaysCalled;
  final TapRegionCallback? onTapOutside;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;
  final Iterable<String>? autofillHints;
  final Clip clipBehavior;
  final String? restorationId;
  final bool scribbleEnabled;
  final ContentInsertionConfiguration? contentInsertionConfiguration;
  final EditableTextContextMenuBuilder? contextMenuBuilder;
  final bool canRequestFocus;
  final UndoHistoryController? undoController;
  final InputCounterWidgetBuilder? buildCounter;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      keyboardType: keyboardType,
      buildCounter: buildCounter,
      decoration: decoration ??
          InputDecoration(
            labelText: labelText,
            labelStyle: context.theme.textTheme.labelMedium?.copyWith(
              color: context.theme.colorScheme.onSurface,
            ),
            floatingLabelStyle:
                TextStyle(color: context.theme.colorScheme.primary),
            alignLabelWithHint: true,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 1,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: context.theme.colorScheme.primary),
            ),
            errorText: errorText,
          ),
      controller: controller,
      focusNode: focusNode,
      undoController: undoController,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      autofocus: autofocus,
      statesController: statesController,
      obscuringCharacter: obscuringCharacter,
      obscureText: obscureText,
      enableSuggestions: enableSuggestions,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      enabled: enabled,
      keyboardAppearance: keyboardAppearance,
      textDirection: textDirection,
    );
  }
}

class AppTextFieldBorder extends StatelessWidget {
  const AppTextFieldBorder({
    super.key,
    this.labelText,
    this.maxLines,
    this.errorText,
    this.controller,
    this.keyboardType,
  });

  final String? errorText;
  final String? labelText;
  final int? maxLines;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: context.theme.textTheme.labelMedium?.copyWith(
          color: context.theme.colorScheme.onSurface,
        ),
        floatingLabelStyle: TextStyle(color: context.theme.colorScheme.primary),
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.theme.colorScheme.primary),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorError),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.theme.colorScheme.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.theme.colorScheme.onSurface),
        ),
        errorText: errorText,
      ),
      maxLines: maxLines,
    );
  }
}
