import 'package:flutter/material.dart';

import '../../../../shared/theme/app_theme.dart';

class SearchTextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  const SearchTextFieldWidget({this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: AppTypography.bodyLargeBold,
      cursorColor: AppColors.gray,
      decoration: InputDecoration(
        hintStyle: AppTypography.bodyMedium,
        hintMaxLines: 1,
        focusColor: AppColors.blue,
        hoverColor: AppColors.gray,
        fillColor: AppColors.lightGray,
        filled: true,
        hintText: _hintText,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
        prefixIcon: Icon(
          Icons.search_rounded,
          size: 24,
        ),
        prefixIconConstraints: BoxConstraints(minHeight: 64, minWidth: 64),
        border: _defaultBorder,
        focusedBorder: _focusBorder,
        errorBorder: _defaultBorder,
        enabledBorder: _defaultBorder,
        disabledBorder: _defaultBorder,
        focusedErrorBorder: _focusBorder,
      ),
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
    );
  }

  String get _hintText => 'Search by username on Twitter';

  OutlineInputBorder get _defaultBorder => OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(32),
      );

  OutlineInputBorder get _focusBorder => OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppColors.blue),
        borderRadius: BorderRadius.circular(32),
      );
}
