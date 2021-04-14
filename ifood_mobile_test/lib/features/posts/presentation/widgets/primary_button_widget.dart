import 'package:flutter/material.dart';

import '../../../../shared/theme/app_theme.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;

  const PrimaryButtonWidget({
    Key? key,
    this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        animationDuration: const Duration(seconds: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        textStyle: AppTypography.bodyLargeMedium.copyWith(
          color: Colors.white,
        ),
        primary: AppColors.blue,
        onPrimary: Colors.white,
        padding: const EdgeInsets.all(16),
      ),
      child: Text(
        buttonText,
        style: AppTypography.headingBold6.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
