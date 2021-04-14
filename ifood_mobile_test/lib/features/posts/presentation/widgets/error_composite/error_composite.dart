import 'package:flutter/material.dart';

import '../../../../../shared/theme/app_theme.dart';

abstract class ErrorComposite extends StatelessWidget {
  final String message;

  const ErrorComposite({
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
          if (buildBottom() != null) const SizedBox(height: 16),
          buildBottom() ?? const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget? buildBottom() => null;
}
