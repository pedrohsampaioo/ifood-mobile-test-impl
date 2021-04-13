import 'package:flutter/material.dart';

import '../../../../shared/theme/app_theme.dart';

class PostWidget extends StatelessWidget {
  final String text;
  final bool hasBottomBorder;
  final bool hasTopBorder;
  final bool hasLeftBorder;
  final bool hasRightBorder;
  final Color? backgroundColor;
  final String? emoji;
  final VoidCallback? onTap;

  const PostWidget({
    required this.text,
    this.hasBottomBorder = true,
    this.hasTopBorder = true,
    this.hasLeftBorder = true,
    this.hasRightBorder = true,
    this.backgroundColor,
    this.emoji,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: _animationDuration,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          border: Border(
            bottom: hasBottomBorder ? _borderSide : BorderSide.none,
            top: hasTopBorder ? _borderSide : BorderSide.none,
            left: hasLeftBorder ? _borderSide : BorderSide.none,
            right: hasRightBorder ? _borderSide : BorderSide.none,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 8,
              child: Text(
                text,
                style: AppTypography.bodyLargeRegular
                    .copyWith(color: AppColors.gray),
                textAlign: TextAlign.start,
              ),
            ),
            if (emoji != null) const SizedBox(width: 32),
            _buildEmoji(text: emoji, animationDuration: _animationDuration),
          ],
        ),
      ),
    );
  }

  Duration get _animationDuration => const Duration(seconds: 1);

  BorderSide get _borderSide => BorderSide(color: AppColors.border);

  Widget _buildEmoji({
    required String? text,
    required Duration animationDuration,
  }) =>
      AnimatedSwitcher(
        duration: animationDuration,
        transitionBuilder: (widget, animation) => FadeTransition(
          opacity: animation,
          child: widget,
        ),
        child: text != null
            ? Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              )
            : const SizedBox.shrink(),
      );
}
