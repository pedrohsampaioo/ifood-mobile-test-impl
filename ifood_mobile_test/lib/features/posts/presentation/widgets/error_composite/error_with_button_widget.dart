import 'package:flutter/material.dart';

import '../primary_button_widget.dart';
import 'error_composite.dart';

class ErrorWithButtonWidget extends ErrorComposite {
  final VoidCallback? onPressed;
  final String buttonText;

  const ErrorWithButtonWidget({
    required String message,
    required this.buttonText,
    this.onPressed,
  }) : super(message: message);

  @override
  Widget? buildBottom() => PrimaryButtonWidget(
        buttonText: buttonText,
        onPressed: onPressed,
      );
}
