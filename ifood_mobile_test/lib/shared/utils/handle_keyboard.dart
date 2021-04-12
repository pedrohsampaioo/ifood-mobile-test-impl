import 'package:flutter/material.dart';

class HandleKeyboard {
  static void hide(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}
