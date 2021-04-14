import 'package:flutter/material.dart';
import 'package:ifood_mobile_test/shared/theme/app_theme.dart';

class ErrorWidget extends StatelessWidget {
  final String message;

  const ErrorWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.warning,
            size: 64,
            color: AppColors.blue,
          ),
          const SizedBox(height: 32),
          Text(
            message,
            textAlign: TextAlign.center,
            style: AppTypography.bodyLargeBold.copyWith(
              color: AppColors.gray,
            ),
          ),
        ],
      ),
    );
  }
}
