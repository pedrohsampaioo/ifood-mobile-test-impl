import 'package:flutter/material.dart';
import 'package:ifood_mobile_test/features/posts/presentation/widgets/search_text_field_widget.dart';
import 'package:ifood_mobile_test/shared/theme/app_theme.dart';
import 'package:ifood_mobile_test/shared/utils/handle_keyboard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => HandleKeyboard.hide(context),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SearchTextFieldWidget(),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
